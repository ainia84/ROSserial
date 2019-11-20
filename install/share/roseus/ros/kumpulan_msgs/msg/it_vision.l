;; Auto-generated. Do not edit!


(when (boundp 'kumpulan_msgs::it_vision)
  (if (not (find-package "KUMPULAN_MSGS"))
    (make-package "KUMPULAN_MSGS"))
  (shadow 'it_vision (find-package "KUMPULAN_MSGS")))
(unless (find-package "KUMPULAN_MSGS::IT_VISION")
  (make-package "KUMPULAN_MSGS::IT_VISION"))

(in-package "ROS")
;;//! \htmlinclude it_vision.msg.html


(defclass kumpulan_msgs::it_vision
  :super ros::object
  :slots (_theta ))

(defmethod kumpulan_msgs::it_vision
  (:init
   (&key
    ((:theta __theta) 0)
    )
   (send-super :init)
   (setq _theta (round __theta))
   self)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; int64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _theta
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _theta (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _theta) (= (length (_theta . bv)) 2)) ;; bignum
              (write-long (ash (elt (_theta . bv) 0) 0) s)
              (write-long (ash (elt (_theta . bv) 1) -1) s))
             ((and (class _theta) (= (length (_theta . bv)) 1)) ;; big1
              (write-long (elt (_theta . bv) 0) s)
              (write-long (if (>= _theta 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _theta s)(write-long (if (>= _theta 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _theta
#+(or :alpha :irix6 :x86_64)
      (setf _theta (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _theta (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get kumpulan_msgs::it_vision :md5sum-) "579bfe7466c60f66eac5cf61a80736f3")
(setf (get kumpulan_msgs::it_vision :datatype-) "kumpulan_msgs/it_vision")
(setf (get kumpulan_msgs::it_vision :definition-)
      "int64 theta

")



(provide :kumpulan_msgs/it_vision "579bfe7466c60f66eac5cf61a80736f3")


