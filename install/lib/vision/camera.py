#!/usr/bin/env python
# license removed for brevity
import rospy
import math
import cv2
import numpy as np
from kumpulan_msgs.msg import it_vision


def getRoi(image):
    upper_left  = (0, 240 )
    bottom_right = (640, 480)
    rect_image = image[upper_left[1]:bottom_right[1], upper_left[0]:bottom_right[0]]
    return rect_image
    
def select_hsv_black(image):
    low_black   = np.uint8([0, 0, 0])
    upper_black = np.uint8([180, 255, 40])
    black_mask  = cv2.inRange(image, low_black, upper_black)
    return black_mask

class VideoCamera(object):

    def __init__(self):
        self.video = cv2.VideoCapture(0)

    def __del__(self):
        self.video.release()

    def get_image(self):
        theta = 0 
        success, image = self.video.read()
        
        image  = getRoi(image)
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    
        mask  = select_hsv_black(hsv) 
        edges = cv2.Canny(mask, 75, 150)
    
        lines = cv2.HoughLinesP(edges, 1, np.pi/180, 50, maxLineGap=50)
    
        if lines is not None:
            for x in range(0, len(lines)):
                for x1, y1, x2, y2 in lines[x]:
                    cv2.line(image, (x1, y1), (x2, y2), (0, 255, 0), 2)
                    theta = theta + math.atan2((y2-y1), (x2-x1))
            
        threshold = 5
        print("theta: ", theta)
        print("threshold: ", threshold)
        if(theta > threshold):
            print("left")
        if(theta < -threshold):
            print("right")
        if(abs(theta) < threshold):
            print("straight")
 
#        cv2.imshow("image", image)
#        cv2.imshow("mask", mask)
        theta = 0
        ret, jpeg = cv2.imencode('.jpg', image)
        
        return jpeg.tobytes()
