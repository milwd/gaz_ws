#! /usr/bin/env python
"""
Wall Follower ROS Node
======================

This module implements a ROS node that enables a mobile robot to follow a wall using 
a laser scanner. The robot switches between different states based on the detected 
distance to obstacles.

The finite-state machine consists of:
1. *Find the Wall*: Moves forward while slightly turning right.
2. *Turn Left*: Rotates left when an obstacle is detected in front.
3. *Follow the Wall*: Moves forward while staying parallel to the wall.

The node listens to laser scan data, determines the robot's surroundings, 
and adjusts its movement accordingly.

Dependencies:
-------------
- `rospy`: Python client library for ROS.
- `sensor_msgs.msg.LaserScan`: Provides laser scan data.
- `geometry_msgs.msg.Twist`: Message type for velocity commands.
- `std_srvs.srv.SetBool`: Service to start/stop wall-following behavior.

"""

import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
from std_srvs.srv import *

import math

# Global control variables
active_ = False  #: Boolean flag to enable/disable the node.

pub_ = None  #: Publisher for velocity commands.

# Dictionary storing laser scan regions
regions_ = {
    'right': 0,
    'fright': 0,
    'front': 0,
    'fleft': 0,
    'left': 0,
}

# State machine variables
state_ = 0  #: Current state (0 Find the wall, 1 Turn left, 2 Follow the wall).
state_dict_ = {
    0: 'find the wall',
    1: 'turn left',
    2: 'follow the wall',
}

def wall_follower_switch(req):
    """
    Service callback to enable or disable the wall-following behavior.

    *Parameters*:
    req : SetBoolRequest
        The service request containing a boolean flag.

    *Returns*:
    SetBoolResponse
        Response indicating success.
    """
    global active_
    active_ = req.data
    res = SetBoolResponse()
    res.success = True
    res.message = 'Done!'
    return res

def clbk_laser(msg):
    """
    Callback function for the laser scan subscriber.

    This function processes laser scan data and updates the `regions_` dictionary
    with the minimum distance readings from different sections around the robot.

    *Parameters*:
    msg : LaserScan
        The received laser scan message.
    """
    global regions_
    regions_ = {
        'right':  min(min(msg.ranges[0:143]), 10),
        'fright': min(min(msg.ranges[144:287]), 10),
        'front':  min(min(msg.ranges[288:431]), 10),
        'fleft':  min(min(msg.ranges[432:575]), 10),
        'left':   min(min(msg.ranges[576:713]), 10),
    }

    take_action()

def change_state(state):
    """
    Changes the robot's state in the finite-state machine.

    *Parameters*:
    state : int
        The new state (0: Find the wall, 1: Turn left, 2: Follow the wall).
    """
    global state_, state_dict_
    if state is not state_:
        print ('Wall follower - [%s] - %s' % (state, state_dict_[state]))
        state_ = state

def take_action():
    """
    Determines the robot's next action based on laser scan readings.

    The function analyzes the distances to obstacles and selects the appropriate
    state (find wall, turn left, or follow wall).
    """
    global regions_
    regions = regions_
    state_description = ''

    d0 = 1   # Threshold distance for detecting obstacles
    d = 1.5  # Threshold for detecting side walls

    if regions['front'] > d0 and regions['fleft'] > d and regions['fright'] > d:
        state_description = 'case 1 - nothing detected'
        change_state(0)
    elif regions['front'] < d0 and regions['fleft'] > d and regions['fright'] > d:
        state_description = 'case 2 - obstacle in front'
        change_state(1)
    elif regions['front'] > d0 and regions['fleft'] > d and regions['fright'] < d:
        state_description = 'case 3 - obstacle on fright'
        change_state(2)
    elif regions['front'] > d0 and regions['fleft'] < d and regions['fright'] > d:
        state_description = 'case 4 - obstacle on fleft'
        change_state(0)
    elif regions['front'] < d0 and regions['fleft'] > d and regions['fright'] < d:
        state_description = 'case 5 - obstacle in front and fright'
        change_state(1)
    elif regions['front'] < d0 and regions['fleft'] < d and regions['fright'] > d:
        state_description = 'case 6 - obstacle in front and fleft'
        change_state(1)
    elif regions['front'] < d0 and regions['fleft'] < d and regions['fright'] < d:
        state_description = 'case 7 - obstacle in front, fleft, and fright'
        change_state(1)
    elif regions['front'] > d0 and regions['fleft'] < d and regions['fright'] < d:
        state_description = 'case 8 - obstacles on fleft and fright'
        change_state(0)
    else:
        state_description = 'unknown case'
        rospy.loginfo(regions)

def find_wall():
    """
    Generates a velocity command to search for a nearby wall.

    The robot moves forward while slightly turning right.

    *Returns*:
    Twist
        The velocity command.
    """
    msg = Twist()
    msg.linear.x = 0.2
    msg.angular.z = -0.3
    return msg

def turn_left():
    """
    Generates a velocity command to turn left when an obstacle is detected.

    *Returns*:
    Twist
        The velocity command.
    """
    msg = Twist()
    msg.angular.z = 0.3
    return msg

def follow_the_wall():
    """
    Generates a velocity command to follow a detected wall.

    The robot moves forward while staying parallel to the wall.

    *Returns*:
    Twist
        The velocity command.
    """
    msg = Twist()
    msg.linear.x = 0.5
    return msg

def main():
    """
    Main function to initialize the node, handle subscriptions, and control the robot.
    """
    global pub_, active_

    rospy.init_node('wall_follower')

    pub_ = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

    rospy.Subscriber('/scan', LaserScan, clbk_laser)

    rospy.Service('wall_follower_switch', SetBool, wall_follower_switch)

    rate = rospy.Rate(20)
    while not rospy.is_shutdown():
        if not active_:
            rate.sleep()
            continue
        else:
            msg = Twist()
            if state_ == 0:
                msg = find_wall()
            elif state_ == 1:
                msg = turn_left()
            elif state_ == 2:
                msg = follow_the_wall()
            else:
                rospy.logerr('Unknown state!')

            pub_.publish(msg)

        rate.sleep()

if __name__ == '__main__':
    main()

