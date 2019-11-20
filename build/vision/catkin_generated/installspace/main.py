#!/usr/bin/env python3
# Author: Divisi Vision kelas 2TKB 
# program ini menggunakan kamera webcam logitech
# untuk mendeteksi garis hitam

import ros
import math
import cv2
import numpy as np
from kumpulan_msgs.msg import it_vision


from flask import Flask, render_template, Response
from camera import VideoCamera

#theta = 0
#video = cv2.VideoCapture(0)
app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

def gen(camera):
    while True:
        frame = camera.get_image()
        yield (b'--frame\r\n'
               b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n\r\n')

@app.route('/video_feed')
def video_feed():
    return Response(gen(VideoCamera()),
                    mimetype='multipart/x-mixed-replace; boundary=frame')

#def getRoi(image):
#  upper_left  = (0, 180)
#  bottom_right = (320, 240)
#
#  # r = cv2.rectangle(image, upper_left, bottom_right, (100, 50, 200), 5)
#  rect_image = image[upper_left[1]:bottom_right[1], upper_left[0]:bottom_right[0]]
#  return rect_image  
#
#
#def select_hsv_black(image):
#    low_black   = np.uint8([0, 0, 0])
#    upper_black = np.uint8([180, 255, 40])
#    black_mask  = cv2.inRange(image, low_black, upper_black)
#    return black_mask
#
## image is expected be in RGB color space
#def select_rgb_white_yellow(image): 
#    # white color mask
#    lower = np.uint8([200, 200, 200])
#    upper = np.uint8([255, 255, 255])
#    white_mask = cv2.inRange(image, lower, upper)
#    # yellow color mask
#    lower = np.uint8([190, 190,   0])
#    upper = np.uint8([255, 255, 255])
#    yellow_mask = cv2.inRange(image, lower, upper)
#    # combine the mask
#    mask = cv2.bitwise_or(white_mask, yellow_mask)
#    masked = cv2.bitwise_and(image, image, mask = mask)
#    return masked


if __name__ == '__main__':
    
    app.run(host='0.0.0.0', debug=True)
    
    
    
#    while True:
#        ret, frame = video.read()
#        if not ret:
#            video = cv2.VideoCapture(0)
#            continue
#    
#        # frame = getRoi(frame)
#        hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
#    
#        mask  = select_hsv_black(hsv) 
#        edges = cv2.Canny(mask, 75, 150)
#    
#        lines = cv2.HoughLinesP(edges, 1, np.pi/180, 50, maxLineGap=50)
#    
#        if lines is not None:
#            for x in range(0, len(lines)):
#                for x1, y1, x2, y2 in lines[x]:
#                    cv2.line(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
#                    theta = theta + math.atan2((y2-y1), (x2-x1))
#            
#        threshold = 5
#        print("theta: ", theta)
#        print("threshold: ", threshold)
#        if(theta > threshold):
#            print("left")
#        if(theta < -threshold):
#            print("right")
#        if(abs(theta) < threshold):
#            print("straight")
#
#        theta = 0
#        cv2.imshow("frame", frame)
#        cv2.imshow("mask", mask)
#        # cv2.imshow("edges", edges)
#
#
#        key = cv2.waitKey(25)
#        if key == 27:
#            break
#
#
#    video.release()
#    cv2.destroyAllWindows()
