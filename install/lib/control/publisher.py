#!/usr/bin/env python
# license removed for brevity
import rospy

#from std_msgs.msg import Int16
from kumpulan_msgs.msg import it_control
from kumpulan_msgs.msg import it_vision

data_visionR=0;
data_visionB=0;

lastRodaKanan       = 0
lastRodaKiri        = 0

def itcallback(data):
	#rospy.loginfo(rospy.get_caller_id() + "I heard %d", data.line_red);

	global data_visionR 
	data_visionR = data.line_red;
	rospy.loginfo("i hear R %d",data_visionR)
	global data_visionB 
	data_visionB = data.line_blue;
	rospy.loginfo("i  B %d",data_visionB)
	#rospy.loginfo(rospy.get_caller_id() + "I heard %d", data.line_blue);

 
def talker():
	rospy.init_node('control', anonymous=True)
	pub = rospy.Publisher('it_control', it_control, queue_size=10)
	sub = rospy.Subscriber('it_vision',it_vision, itcallback)
	rate = rospy.Rate(10) # 10hz
	while not rospy.is_shutdown():
		msg = it_control()
		msg.lastRodaKiri=100#data_visionB
		msg.lastRodaKanan=20#data_visionR
		#rospy.loginfo("masuk %d",data_visionB)
		#pub.Publish(msg)
		#rospy.loginfo(hello_str)
		rospy.loginfo(lastRodaKiri)
		pub.publish(msg)
		#rospy.spin()
		#pub.publish(hello_str2)
		rate.sleep()

if __name__ == '__main__':
	talker()
