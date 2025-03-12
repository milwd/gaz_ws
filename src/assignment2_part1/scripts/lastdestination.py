#! /usr/bin/env python
"""
Last Destination
================

This module provides a ROS node that tracks and serves the last destination coordinates
based on the latest goal received from a navigation or planning system. The node exposes
a service to return the most recent destination coordinates (x, y), and subscribes to
a topic for receiving goal messages to update the destination coordinates.

The main functionality involves:
1. Subscribing to a goal topic.
2. Updating destination coordinates when a new goal is received.
3. Exposing a service to return the last known destination coordinates on request.

Dependencies:
-------------
- rospy: The Python library for ROS (Robot Operating System) interaction.
- assignment2_part1.msg: Custom message definitions used in the project.
- assignment2_part1.srv: Custom service definitions used in the project.

"""

import rospy
import assignment2_part1.msg
from assignment2_part1.srv import last_destination

# Global variables to store the last known destination coordinates
last_destination_x = None
last_destination_y = None

def clbk_service(request):
    """
    Callback function for the ROS service 'last_destination'.
    
    This function gets triggered whenever the service is called. It returns the last
    known destination coordinates (x, y) stored globally. These coordinates are updated
    whenever a new goal is received from the 'goal' topic.

    *Parameters*:
    request (last_destinationRequest): 
    	The service request object (though unused here).

    *Returns*:
    last_destinationResponse: 
    	A response object containing the last known x and y coordinates.

    This function does not perform any modification to the stored coordinates, it simply
    returns the most recent ones available.
    """
    global last_destination_x, last_destination_y
    # Print the current destination coordinates for debugging purposes
    print("Last destination x/y coordinate is: ", last_destination_x, last_destination_y)
    
    # Return the coordinates in the response
    return last_destinationResponse(last_destination_x, last_destination_y)

def clbk_goal(msg):
    """
    Callback function for subscribing to the '/reaching_goal/goal' topic.

    This function is triggered whenever a new goal message is received on the topic.
    It updates the global variables holding the last known destination coordinates with
    the new goal's position values (x, y).

    *Parameters*:
    msg (PlanningActionGoal): 
    	The message received from the 'goal' topic containing the target position for the goal.

    This function updates the global variables 'last_destination_x' and 'last_destination_y'.
    """
    global last_destination_x, last_destination_y
    # Extract the x and y coordinates from the message
    last_destination_x = msg.goal.target_pose.pose.position.x
    last_destination_y = msg.goal.target_pose.pose.position.y

def main():
    """
    Main entry point of the node.

    This function initializes the ROS node, sets up the service and the subscriber, and enters
    the ROS event loop to handle service requests and message reception.

    It initializes the 'last_destination' service with the callback function 'clbk_service'.
    It also subscribes to the '/reaching_goal/goal' topic to listen for new goal messages
    and calls the 'clbk_goal' callback when a new message is received.

    This function ensures that the node continues to run, processing service calls and topic
    messages until the node is shut down.
    """
    # Initialize the ROS node with the name 'last_destination'
    rospy.init_node("last_destination")

    # Advertise the service to provide last destination coordinates
    rospy.Service("last_destination", last_destination, clbk_service)

    # Subscribe to the '/reaching_goal/goal' topic to receive goal messages
    rospy.Subscriber('/reaching_goal/goal', assignment2_part1.msg.PlanningActionGoal, clbk_goal)

    # Spin to keep the program running and processing ROS callbacks
    rospy.spin()

if __name__ == "__main__":
    # Execute the main function when the script is run
    main()

