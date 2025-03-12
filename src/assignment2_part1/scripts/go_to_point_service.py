#! /usr/bin/env python
"""
Go-To-Point ROS Node
====================

This module implements a ROS node that controls a mobile robot to navigate 
to a specified goal position using proportional controllers for yaw and 
distance corrections. It subscribes to odometry data, computes the required 
control actions, and publishes velocity commands.

The node follows a simple finite-state machine:
1. *Fix Yaw*: The robot rotates to align with the target position.
2. *Go Straight Ahead*: The robot moves towards the goal while maintaining orientation.
3. *Done*: The robot stops once the goal is reached.

The node also exposes a ROS service to activate or deactivate the go-to-point behavior.

Dependencies:
-------------
- `rospy`: Python client library for ROS.
- `sensor_msgs.msg.LaserScan`: Provides laser scan data (though not used in this node).
- `geometry_msgs.msg.Twist, Point`: Message types for velocity commands and positions.
- `nav_msgs.msg.Odometry`: Provides odometry data.
- `tf.transformations`: For quaternion-to-Euler angle conversions.
- `std_srvs.srv.SetBool`: Service to start/stop navigation.
"""

import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist, Point
from nav_msgs.msg import Odometry
from tf import transformations
from std_srvs.srv import *
import time
import math

# Global variables
active_ = False  #: Boolean flag to enable/disable the node.

# Robot state variables
position_ = Point()  #: Current position of the robot.
yaw_ = 0  #: Current yaw angle of the robot.

# Machine state (Finite State Machine)
state_ = 0  #: Current state (0 Fix yaw, 1 Move straight, 2 Done).

# Goal position
desired_position_ = Point()
desired_position_.x = rospy.get_param('des_pos_x')
desired_position_.y = rospy.get_param('des_pos_y')
desired_position_.z = 0

# Control parameters
yaw_precision_ = math.pi / 9  #: Allowed yaw error for switching to move state (±20°).
yaw_precision_2_ = math.pi / 90  #: Allowed yaw error for stopping yaw correction (±2°).
dist_precision_ = 0.3  #: Distance tolerance to consider goal reached.

kp_a = 3.0  #: Proportional gain for yaw correction.
kp_d = 0.2  #: Proportional gain for distance correction.
ub_a = 0.6  #: Upper bound for angular velocity.
lb_a = -0.5  #: Lower bound for angular velocity.
ub_d = 0.6  #: Upper bound for linear velocity.

# ROS publisher
pub = None  #: Publisher for velocity commands.


def go_to_point_switch(req):
    """
    Service callback to enable or disable the go-to-point behavior.

    *Parameters*:
    req : SetBoolRequest
        The service request containing a boolean flag.

    *Returns*:
    res : SetBoolResponse
        Response indicating success.
    """
    global active_
    active_ = req.data
    res = SetBoolResponse()
    res.success = True
    res.message = 'Done!'
    return res


def clbk_odom(msg):
    """
    Callback function for the odometry subscriber.

    Updates the robot's current position and yaw angle.

    *Parameters*:
    msg : Odometry
        The received odometry message.
    """
    global position_, yaw_

    # Extract position
    position_ = msg.pose.pose.position

    # Compute yaw from quaternion
    quaternion = (
        msg.pose.pose.orientation.x,
        msg.pose.pose.orientation.y,
        msg.pose.pose.orientation.z,
        msg.pose.pose.orientation.w
    )
    euler = transformations.euler_from_quaternion(quaternion)
    yaw_ = euler[2]


def change_state(state):
    """
    Changes the robot's state in the finite-state machine.

    *Parameters*:
    state : int
        The new state (0 Fix yaw, 1 Move straight, 2 Done).
    """
    global state_
    state_ = state
    print ('State changed to [%s]' % state_)


def normalize_angle(angle):
    """
    Normalizes an angle to the range [-?, ?].

    *Parameters*:
    angle : float
        Input angle in radians.

    *Returns*:
    angle : float
        Normalized angle in radians.
    """
    if math.fabs(angle) > math.pi:
        angle = angle - (2 * math.pi * angle) / (math.fabs(angle))
    return angle


def fix_yaw(des_pos):
    """
    Rotates the robot to align with the target position.

    *Parameters*:
    des_pos : Point
        The desired goal position.
    """
    global yaw_, pub, yaw_precision_2_, state_

    desired_yaw = math.atan2(des_pos.y - position_.y, des_pos.x - position_.x)
    err_yaw = normalize_angle(desired_yaw - yaw_)

    rospy.loginfo(err_yaw)

    twist_msg = Twist()
    if math.fabs(err_yaw) > yaw_precision_2_:
        twist_msg.angular.z = kp_a * err_yaw
        twist_msg.angular.z = max(min(twist_msg.angular.z, ub_a), lb_a)

    pub.publish(twist_msg)

    # State transition condition
    if math.fabs(err_yaw) <= yaw_precision_2_:
        print ('Yaw error: [%s]' % err_yaw)
        change_state(1)


def go_straight_ahead(des_pos):
    """
    Moves the robot straight toward the target position.

    *Parameters*:
    des_pos : Point
        The desired goal position.
    """
    global yaw_, pub, yaw_precision_, state_

    desired_yaw = math.atan2(des_pos.y - position_.y, des_pos.x - position_.x)
    err_yaw = desired_yaw - yaw_
    err_pos = math.sqrt((des_pos.y - position_.y)**2 + (des_pos.x - position_.x)**2)

    if err_pos > dist_precision_:
        twist_msg = Twist()
        twist_msg.linear.x = min(kp_d * err_pos, ub_d)
        twist_msg.angular.z = kp_a * err_yaw
        pub.publish(twist_msg)
    else:
        print ('Position error: [%s]' % err_pos)
        change_state(2)

    # State transition condition
    if math.fabs(err_yaw) > yaw_precision_:
        print ('Yaw error: [%s]' % err_yaw)
        change_state(0)


def done():
    """
    Stops the robot by publishing zero velocity.
    """
    twist_msg = Twist()
    twist_msg.linear.x = 0
    twist_msg.angular.z = 0
    pub.publish(twist_msg)


def main():
    """
    Main function to initialize the node, handle subscriptions, and control the robot.
    """
    global pub, active_

    rospy.init_node('go_to_point')

    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

    rospy.Subscriber('/odom', Odometry, clbk_odom)

    rospy.Service('go_to_point_switch', SetBool, go_to_point_switch)

    rate = rospy.Rate(20)
    while not rospy.is_shutdown():
        if not active_:
            continue
        else:
            desired_position_.x = rospy.get_param('des_pos_x')
            desired_position_.y = rospy.get_param('des_pos_y')
            if state_ == 0:
                fix_yaw(desired_position_)
            elif state_ == 1:
                go_straight_ahead(desired_position_)
            elif state_ == 2:
                done()
            else:
                rospy.logerr('Unknown state!')

        rate.sleep()


if __name__ == '__main__':
    main()

