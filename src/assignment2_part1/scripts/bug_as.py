#! /usr/bin/env python
"""
Bug0 Navigation Node
=====================

This module implements a ROS-based navigation strategy for a robot using the Bug0 algorithm.
The system subscribes to odometry and laser scan data, processes sensor information, and
utilizes an action server to reach specified target positions while avoiding obstacles.

The main functionalities include:
- Subscribing to `/odom` for robot pose and orientation.
- Subscribing to `/scan` for laser-based obstacle detection.
- Publishing velocity commands to `/cmd_vel`.
- Managing different navigation states: moving to a goal, avoiding obstacles, and stopping.
- Using an action server (`/reaching_goal`) to execute navigation commands.
- Calling services to switch between goal-seeking and wall-following behaviors.

Dependencies:
-------------
- rospy: ROS Python library for communication.
- geometry_msgs: Provides Point, Pose, and Twist message types.
- sensor_msgs: Provides LaserScan message type.
- nav_msgs: Provides Odometry message type.
- std_srvs: Provides standard ROS service message types.
- tf: Provides transformations for quaternion processing.
- actionlib: Provides tools for implementing action-based communication.
"""

import rospy
from geometry_msgs.msg import Point, Pose, Twist
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry
import math
import actionlib
import assignment_2_2024.msg
from tf import transformations
from std_srvs.srv import SetBool
import time

# Global variables
srv_client_go_to_point_ = None
srv_client_wall_follower_ = None
yaw_ = 0
yaw_error_allowed_ = 5 * (math.pi / 180)  # 5-degree tolerance
position_ = Point()
pose_ = Pose()
desired_position_ = Point()
desired_position_.z = 0
regions_ = None
state_desc_ = ['Go to point', 'Wall following', 'Done']
state_ = 0  #: Current navigation state (0 - go to point, 1 - wall following, 2 - done, 3 - canceled)


def clbk_odom(msg):
    """
    Callback function for the odometry subscriber.
    
    Updates the robot's position and yaw angle based on odometry data.
    
    *Parameters*:
    msg (nav_msgs.msg.Odometry): 
    	The odometry message containing the robot's pose.
    """
    global position_, yaw_, pose_
    
    position_ = msg.pose.pose.position
    pose_ = msg.pose.pose
    
    quaternion = (
        msg.pose.pose.orientation.x,
        msg.pose.pose.orientation.y,
        msg.pose.pose.orientation.z,
        msg.pose.pose.orientation.w
    )
    euler = transformations.euler_from_quaternion(quaternion)
    yaw_ = euler[2]


def clbk_laser(msg):
    """
    Callback function for the laser scanner subscriber.
    
    Processes laser scan data and segments obstacle distances into predefined regions.
    
    *Parameters*:
    msg (sensor_msgs.msg.LaserScan): 
    	The laser scan message containing range data.
    """
    global regions_
    regions_ = {
        'right':  min(min(msg.ranges[0:143]), 10),
        'fright': min(min(msg.ranges[144:287]), 10),
        'front':  min(min(msg.ranges[288:431]), 10),
        'fleft':  min(min(msg.ranges[432:575]), 10),
        'left':   min(min(msg.ranges[576:719]), 10),
    }


def change_state(state):
    """
    Updates the robot's navigation state and adjusts service calls accordingly.
    
    *Parameters*:
    state (int): 
    	The new state to transition to (0: go to point, 1: wall following, 2: done).
    """
    global state_, state_desc_
    global srv_client_wall_follower_, srv_client_go_to_point_
    
    state_ = state
    rospy.loginfo("State changed: %s" % state_desc_[state])
    
    if state_ == 0:
        srv_client_go_to_point_(True)
        srv_client_wall_follower_(False)
    elif state_ == 1:
        srv_client_go_to_point_(False)
        srv_client_wall_follower_(True)
    elif state_ == 2:
        srv_client_go_to_point_(False)
        srv_client_wall_follower_(False)


def normalize_angle(angle):
    """
    Normalizes an angle to the range [-pi, pi].
    
    *Parameters*:
    angle (float): 
    	The angle in radians.
    
    *Returns*:
    angle (float): 
    	The normalized angle.
    """
    if(math.fabs(angle) > math.pi):
        angle -= (2 * math.pi * angle) / (math.fabs(angle))
    return angle


def done():
    """
    Stops the robot by publishing zero velocity.
    """
    twist_msg = Twist()
    twist_msg.linear.x = 0
    twist_msg.angular.z = 0
    pub.publish(twist_msg)


def planning(goal):
    """
    Executes the robot's goal-reaching behavior while avoiding obstacles.
    
    *Parameters*:
    goal (assignment_2_2024.msg.PlanningGoal): 
    	The goal message containing the target pose.
    """
    global regions_, position_, desired_position_, state_, yaw_, yaw_error_allowed_
    global srv_client_go_to_point_, srv_client_wall_follower_, act_s, pose_
    
    change_state(0)
    rate = rospy.Rate(20)
    success = True
    
    desired_position_.x = goal.target_pose.pose.position.x
    desired_position_.y = goal.target_pose.pose.position.y
    
    feedback = assignment_2_2024.msg.PlanningFeedback()
    result = assignment_2_2024.msg.PlanningResult()
    
    while not rospy.is_shutdown():
        err_pos = math.sqrt((desired_position_.y - position_.y)**2 + (desired_position_.x - position_.x)**2)
        if act_s.is_preempt_requested():
            rospy.loginfo("Goal was preempted")
            feedback.stat = "Target cancelled!"
            feedback.actual_pose = pose_
            act_s.publish_feedback(feedback)
            act_s.set_preempted()
            success = False
            change_state(2)
            done()
            break
        elif err_pos < 0.5:
            change_state(2)
            feedback.stat = "Target reached!"
            feedback.actual_pose = pose_
            act_s.publish_feedback(feedback)
            done()
            break
        rate.sleep()
    
    if success:
        rospy.loginfo("Goal: Succeeded!")
        act_s.set_succeeded(result)


def main():
    """
    Initializes the ROS node, sets up subscribers, publishers, and services, and starts the action server.
    """
    rospy.init_node('bug0')
    
    rospy.Subscriber('/scan', LaserScan, clbk_laser)
    rospy.Subscriber('/odom', Odometry, clbk_odom)
    
    rospy.spin()


if __name__ == "__main__":
    main()

