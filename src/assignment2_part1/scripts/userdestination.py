#! /usr/bin/env python

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


def clbk_odom(msg):
	new_info = posit()
	new_info.x = msg.pose.pose.position.x
	new_info.y = msg.pose.pose.position.y	
	new_info.vel_x = msg.twist.twist.linear.x 
	new_info.vel_z = msg.twist.twist.angular.z
	pub.publish(new_info)


def clbk_feedback(feedback):
	if feedback.stat == "Target reached!":
		print(feedback)
		print("Press 'Enter' to set a new goal\n")
	if feedback.stat == "Target cancelled!":
		print(feedback)
        
def action():
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
	global pub, sub
	rospy.init_node('action_client')
	pub = rospy.Publisher('/robot_pos_vel', posit, queue_size=10)
	sub = rospy.Subscriber('/odom', Odometry, clbk_odom)
	action()

if __name__ == "__main__":
	main()
