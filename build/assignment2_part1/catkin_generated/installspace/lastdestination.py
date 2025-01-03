#!/usr/bin/env python3

import rospy
import assignment2_part1.msg
from assignment2_part1.srv import last_destination

def clbk_service(request):
	global last_destination_x, last_destination_y
	print("last destination x/y coordinate is: ", last_destination_x, last_destination_y)
	return last_destinationResponse(last_destination_x, last_destination_y)


def clbk_goal(msg):
	global last_destionation_x, last_destination_y
	last_destination_x = msg.goal.target_pose.pose.position.x
	last_destination_y = msg.goal.target_pose.pose.position.y


def main():
	rospy.init_node("last_destination")
	rospy.Service("last_destination", last_destination, clbk_service)
	rospy.Subscriber('/reaching_goal/goal', assignment2_part1.msg.PlanningActionGoal, clbk_goal)
	rospy.spin()


if __name__ == "__main__":
	main()
