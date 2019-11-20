;; Auto-generated. Do not edit!


(when (boundp 'kumpulan_msgs::arduino_it)
  (if (not (find-package "KUMPULAN_MSGS"))
    (make-package "KUMPULAN_MSGS"))
  (shadow 'arduino_it (find-package "KUMPULAN_MSGS")))
(unless (find-package "KUMPULAN_MSGS::ARDUINO_IT")
  (make-package "KUMPULAN_MSGS::ARDUINO_IT"))

(in-package "ROS")
;;//! \htmlinclude arduino_it.msg.html


(defclass kumpulan_msgs::arduino_it
  :super ros::object
  :slots (_distance _rpm ))

(defmethod kumpulan_msgs::arduino_it
  (:init
   (&key
    ((:distance __distance) 0)
    ((:rpm __rpm) 0)
    )
   (send-super :init)
   (setq _distance (round __distance))
   (setq _rpm (round __rpm))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:rpm
   (&optional __rpm)
   (if __rpm (setq _rpm __rpm)) _rpm)
  (:serialization-length
   ()
   (+
    ;; int64 _distance
    8
    ;; int64 _rpm
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _distance
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _distance (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _distance) (= (length (_distance . bv)) 2)) ;; bignum
              (write-long (ash (elt (_distance . bv) 0) 0) s)
              (write-long (ash (elt (_distance . bv) 1) -1) s))
             ((and (class _distance) (= (length (_distance . bv)) 1)) ;; big1
              (write-long (elt (_distance . bv) 0) s)
              (write-long (if (>= _distance 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _distance s)(write-long (if (>= _distance 0) 0 #xffffffff) s)))
     ;; int64 _rpm
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rpm (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rpm) (= (length (_rpm . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rpm . bv) 0) 0) s)
              (write-long (ash (elt (_rpm . bv) 1) -1) s))
             ((and (class _rpm) (= (length (_rpm . bv)) 1)) ;; big1
              (write-long (elt (_rpm . bv) 0) s)
              (write-long (if (>= _rpm 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rpm s)(write-long (if (>= _rpm 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _distance
#+(or :alpha :irix6 :x86_64)
      (setf _distance (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _distance (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rpm
#+(or :alpha :irix6 :x86_64)
      (setf _rpm (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rpm (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get kumpulan_msgs::arduino_it :md5sum-) "7185bd32d30d0999a697641753b76f72")
(setf (get kumpulan_msgs::arduino_it :datatype-) "kumpulan_msgs/arduino_it")
(setf (get kumpulan_msgs::arduino_it :definition-)
      "int64 distance
int64 rpm

")



(provide :kumpulan_msgs/arduino_it "7185bd32d30d0999a697641753b76f72")


