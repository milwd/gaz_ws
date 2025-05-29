
#!/usr/bin/env python
import rospy
import actionlib
import threading
from std_srvs.srv import Empty
from geometry_msgs.msg import Point
from nav_msgs.msg import Odometry
from assignment2_part1.msg import posit, PlanningAction, PlanningGoal
from sensor_msgs.msg import LaserScan
import time
from gazebo_msgs.msg import ModelState 
from gazebo_msgs.srv import SetModelState
import math
from tf.transformations import euler_from_quaternion
import numpy as np
import csv


def generate_2d_points(min_x, max_x, min_y, max_y, strategy, error_boxes, num=None):
    initial_positions = []
    if strategy == 'uniform':
        xs = np.linspace(min_x, max_x, max_x - min_x + 1)
        ys = np.linspace(min_y, max_y, max_y - min_y + 1)
        for x in xs:
            for y in ys:
                if error_boxes is not None:
                    if error_boxes(x, y):
                        continue
                initial_positions.append([x, y])
    elif strategy == 'random':
        i = 0
        while i < num:
            while True:
                x = np.random.rand() * (max_x - min_x) + min_x
                y = np.random.rand() * (max_y - min_y) + min_y
                if error_boxes is not None:
                    if error_boxes(x, y):
                        continue
                break
            initial_positions.append([x, y])
            i += 1
    else:
        print('strategy unknown')
        return None
                        
    return initial_positions


def teleport(proxy, name, x, y, z=0, ax=0, ay=0, az=0, aw=0):
    state_msg = ModelState()
    state_msg.model_name = name
    state_msg.pose.position.x = x
    state_msg.pose.position.y = y
    state_msg.pose.position.z = z
    state_msg.pose.orientation.x = ax
    state_msg.pose.orientation.y = ay
    state_msg.pose.orientation.z = az
    state_msg.pose.orientation.w = aw
    try:
        resp = set_state( state_msg )
    except rospy.ServiceException as e:
        print ("Service call failed: %s" % e)
    return resp if resp is not None else print("")


def calculate_p2p(a, b):
    return np.sqrt((a[0] - b[0]) ** 2 + (a[1] - b[1]) ** 2)


def calculate_distance_and_rotation(poses):
    total_distance = 0.0
    total_yaw_change = 0.0

    for i in range(1, len(poses)):
        x0, y0 = poses[i - 1][0], poses[i - 1][1]
        x1, y1 = poses[i][0], poses[i][1]

        dx = x1 - x0
        dy = y1 - y0
        dist = math.hypot(dx, dy)
        total_distance += dist

        yaw0 = get_yaw(*poses[i - 1][3:7])
        yaw1 = get_yaw(*poses[i][3:7])
        dyaw = angle_diff(yaw1, yaw0)
        total_yaw_change += abs(dyaw)

    return total_distance, total_yaw_change


def get_yaw(qx, qy, qz, qw):
    """Extract yaw from quaternion."""
    _, _, yaw = euler_from_quaternion([qx, qy, qz, qw])
    return yaw


def angle_diff(a, b):
    """Return smallest signed angle difference (radians)."""
    d = a - b
    return (d + math.pi) % (2 * math.pi) - math.pi


def save_robot_data_to_csv(data, filename):
    """
    Saves robot experiment data to a CSV file.

    Args:
        data (dict): The dictionary containing robot experiment data.
        filename (str): The path to the CSV file where data will be saved.
    """
    fieldnames = ['iteration', 'initial_x', 'initial_y', 'goal_x', 'goal_y',
                  'cancelled', 'goal_accuracy', 'aggregated_distance',
                  'aggregated_angle', 'elapsed_time']

    with open(filename, 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for iteration, values in data.items():
            row = {
                'iteration': iteration,
                'initial_x': values['initial'][0],
                'initial_y': values['initial'][1],
                'goal_x': values['goal'][0],
                'goal_y': values['goal'][1],
                'cancelled': values['cancelled'],
                'goal_accuracy': values['goal_accuracy'],
                'aggregated_distance': values['aggregated_distance'],
                'aggregated_angle': values['aggregated_angle'],
                'elapsed_time': values['elapsed_time']
            }
            writer.writerow(row)

def trial(time_thresh, robot_name):
    trials_data = dict()
    trial_number = 0    
    time_threshold = time_thresh

    while not rospy.is_shutdown():
        for x, y in initial_positions:
            for xg, yg in goal_positions:
            	reset_world()
                ret = teleport(set_state, robot_name, x, y)
                if not ret.success:
                    print(f"Teleport to initial position ({x}, {y}) was not successful for some reason!")
                    continue
                trial_number += 1
                print(f"Trial number: {trial_number}")
                cancelled = False
                poses = [[x, y, 0, 0, 0, 0, 0]]
                goal = PlanningGoal()
                goal.target_pose.pose.position.x = xg
                goal.target_pose.pose.position.y = yg
                client.send_goal(goal, None, None, lambda fb: 
                                 poses.append([
                                     fb.actual_pose.position.x, 
                                     fb.actual_pose.position.y,
                                     fb.actual_pose.position.z,
                                     fb.actual_pose.orientation.x,
                                     fb.actual_pose.orientation.y,
                                     fb.actual_pose.orientation.z,
                                     fb.actual_pose.orientation.w
                                 ]))
                print(f"Movement to goal ({xg}, {yg})!")
                t1 = time.time()
                while not client.get_result():
                    if abs(time.time() - t1) > time_threshold:
                        cancelled = True
                        print(f"Movement to goal position ({xg}, {yg}) was not successful due to time duration!")
                        client.cancel_goal()
                        break
                elapsed = time.time() - t1
                print(f"Time taken to reach ({xg}, {yg}) from ({x}, {y}) is {round(elapsed, 2)}")

                aggr_dist, aggr_ang = calculate_distance_and_rotation(poses)
                trials_data[trial_number] = {
                    'initial': [x, y],
                    'goal': [xg, yg],
                    'cancelled': cancelled,
                    'goal_accuracy': calculate_p2p(poses[-1], [xg, yg]),
                    'aggregated_distance': aggr_dist,
                    'aggregated_angle': aggr_ang,
                    'elapsed_time': round(elapsed, 2)
                }
                if trial_number > 2:
                    break
            break
        break
    return trials_data
            

if __name__ == "__main__":
    rospy.init_node('robocontrol', anonymous=True)
    print("⏳ Waiting for action server...")
    rospy.wait_for_service('/gazebo/set_model_state')
    print("✅ Teleport Service Active!")
    set_state = rospy.ServiceProxy('/gazebo/set_model_state', SetModelState)
    client = actionlib.SimpleActionClient('/reaching_goal', PlanningAction)
    print("⏳ Waiting for action server...")
    client.wait_for_server()
    print("✅ Movement ActServ Active!")
    
    rospy.wait_for_service('/gazebo/reset_world')
    reset_world = rospy.ServiceProxy('/gazebo/reset_world', Empty)
    print("reset_world Service Active!")
    
    algo = str(rospy.get_param("algo"))

    pos_vel_pub = rospy.Publisher('/robot_pos_vel', posit, queue_size=10)

    min_x, max_x = -7, 7
    min_y, max_y = -7, 7

    error_box_1 = lambda x, y: (y < 0 and y > -6 and x < 4 and x > -6)
    error_box_2 = lambda x, y: (y < 6 and y > 3 and x < 6)
    error_box = lambda x, y: error_box_1(x, y) or error_box_2(x, y)

    ## uniform positions
    filename = "/root/gaz_ws/uniform"+algo+".csv"
    robotname = "robot1"
    time_threshold = 6 * 60
    initial_positions = generate_2d_points(min_x, max_x, min_y, max_y, 'uniform', error_box)
    goal_positions = generate_2d_points(-7, 7, -7, 7, 'uniform', None)
    print(len(initial_positions), len(goal_positions))

    trials_data = trial(time_threshold, robotname)
    save_robot_data_to_csv(trials_data.copy(), filename)

    ## random positions
    filename = "/root/gaz_ws/random"+algo+".csv"
    robotname = "robot1"
    time_threshold = 3 * 60
    initial_positions = generate_2d_points(min_x, max_x, min_y, max_y, 'random', None, 30)
    goal_positions = generate_2d_points(min_x, max_x, min_y, max_y, 'random', None, 30)
    print(len(initial_positions), len(goal_positions))

    trials_data = trial(time_threshold, robotname)
    save_robot_data_to_csv(trials_data.copy(), filename)
    
    
    
