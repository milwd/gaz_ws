#! /usr/bin/env python
"""
User Destination
================

This module defines a ROS action client that interacts with a robot's goal-planning
system. The client sends goals to a navigation system and allows the user to set new goals
through the console. Additionally, the client subscribes to an odometry topic to publish the
robot's position and velocity, and handles feedback from the goal-reaching action.

The main tasks of the node include:
1. Subscribing to the robot's odometry data to track position and velocity.
2. Sending goals to the '/reaching_goal' action server.
3. Handling feedback from the action server to notify when the goal is reached or canceled.
4. Allowing the user to interactively set new goals via the console.

Dependencies:
-------------
- rospy: The Python library for ROS (Robot Operating System) interaction.
- actionlib: A library for managing actions in ROS, including goal sending and feedback handling.
- assignment2_part1.msg: Custom message definitions used in the project.
- std_srvs.srv: Standard service definitions used in ROS.
- nav_msgs.msg: Message definitions for odometry data.
- geometry_msgs.msg: Message definitions for geometry, including Pose, Point, and Twist.

"""

import time
import rospy
import select
import actionlib
import actionlib.msg
import assignment2_part1.msg
from assignment2_part1.msg import posit
from std_srvs.srv import *
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Point, Pose, Twist
import sys

def clbk_odom(msg):
    """
    Callback function for the '/odom' topic subscription.

    This function is triggered whenever a new Odometry message is received. It extracts
    the robot's position (x, y) and velocity (linear x, angular z) from the message and 
    publishes these values to the '/robot_pos_vel' topic in a custom 'posit' message format.

    *Parameters*:
    msg (Odometry): 
    	The Odometry message received from the robot, containing position and velocity information.

    This function does not return any values, but it publishes the position and velocity 
    data to the '/robot_pos_vel' topic for further processing or logging.
    """
    new_info = posit()
    new_info.x = msg.pose.pose.position.x
    new_info.y = msg.pose.pose.position.y    
    new_info.vel_x = msg.twist.twist.linear.x 
    new_info.vel_z = msg.twist.twist.angular.z
    pub.publish(new_info)

def clbk_feedback(feedback):
    """
    Callback function for receiving feedback from the '/reaching_goal' action server.

    This function processes the feedback provided by the action server. If the status
    indicates that the target was reached, a message is printed to notify the user. If
    the goal is canceled, the status of the cancellation is also printed.

    *Parameters*:
    feedback (PlanningActionFeedback): 
    	The feedback message received from the action server, containing the current status of the goal.

    The feedback's `stat` field is checked for specific messages ("Target reached!" or
    "Target cancelled!") and appropriate messages are printed to the console to inform
    the user of the goal's status.
    """
    if feedback.stat == "Target reached!":
        print(feedback)
        print("Press 'Enter' to set a new goal\n")
    if feedback.stat == "Target cancelled!":
        print(feedback)

def action():
    """
    Main function for sending goals to the '/reaching_goal' action server.

    This function initializes an action client and repeatedly prompts the user to enter
    goal coordinates (x, y). It validates the input to ensure the coordinates are within
    a valid range (-9 to 9). Once a valid goal is set, it sends the goal to the action
    server and waits for feedback. During goal execution, the user can cancel the goal
    by pressing the 'q' key.

    The function will continue looping until the user manually shuts down the node or the
    robot reaches or cancels the goal.

    It also handles cancelling the goal using the `select` module to listen for user input
    asynchronously without blocking the ROS event loop.

    This function does not return any values; it runs as long as the node is active and
    interacting with the user.
    """
    client = actionlib.SimpleActionClient('/reaching_goal', assignment2_part1.msg.PlanningAction)
    client.wait_for_server()
    
    while not rospy.is_shutdown():
        time.sleep(0.5)
        print("Set the goal coordinates!")
        try:
            x = float(input("Enter x coordinate: "))
            y = float(input("Enter y coordinate: "))
            if -9 <= x <= 9 and -9 <= y <= 9:
                print(f"Goal coordinates set: (x={x},y={y})")
            else:
                print("Invalid input. Please enter x and y coordinates within the range -9 to 9.")
                continue
        except ValueError:
            print("Invalid input. Please enter a number.")
            continue
        
        goal = assignment2_part1.msg.PlanningGoal()
        goal.target_pose.pose.position.x = x
        goal.target_pose.pose.position.y = y
        client.send_goal(goal, None, None, clbk_feedback)
        
        while not client.get_result():
            print("Robot is reaching the goal. Press 'q' to cancel the goal.")
            cancel = select.select([sys.stdin], [], [], 0.1)
            if cancel:
                user_input = sys.stdin.readline().strip()
                if user_input == 'q':
                    client.cancel_goal()
                    break

def main():
    """
    The main entry point of the ROS node.

    This function initializes the ROS node, sets up the publisher and subscriber for
    the robot's position and odometry data, and calls the action function to interact
    with the goal-reaching system.

    It also defines global variables `pub` and `sub` to manage the publisher for the 
    '/robot_pos_vel' topic and the subscriber for the '/odom' topic. These variables are
    used in other parts of the code, such as the callback for odometry messages.

    The function then starts the action interaction, enabling the user to set goals and
    receive feedback.
    """
    global pub, sub
    rospy.init_node('action_client')
    pub = rospy.Publisher('/robot_pos_vel', posit, queue_size=10)
    sub = rospy.Subscriber('/odom', Odometry, clbk_odom)
    action()

if __name__ == "__main__":
    # Call the main function to start the node
    main()

