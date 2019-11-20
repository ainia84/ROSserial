#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from kumpulan_msgs.msg import arduino_it

data_ultrasonic=0
data_rotary_encoder=0

def callback(data):
	#rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
        global data_ultrasonic 
	data_ultrasonic = data.ultrasonic;
	rospy.loginfo("i hear R %d",data.ultrasonic)
	global data_rotary_encoder 
	data_rotaty_encoder = data.rotary_encoder;
	rospy.loginfo("i hear B %d",data_rotaty_encoder)
def listener():

	# In ROS, nodes are uniquely named. If two nodes with the same
	# name are launched, the previous one is kicked off. The
	# anonymous=True flag means that rospy will choose a unique
	# name for our 'listener' node so that multiple listeners can
	# run simultaneously.
	rospy.init_node('listener', anonymous=True)

	rospy.Subscriber("arduino_it", arduino_it , callback)

	# spin() simply keeps python from exiting until this node is stopped
	rospy.spin()

if __name__ == '__main__':
	listener()
