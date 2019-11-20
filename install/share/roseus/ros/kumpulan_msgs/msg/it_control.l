;; Auto-generated. Do not edit!


(when (boundp 'kumpulan_msgs::it_control)
  (if (not (find-package "KUMPULAN_MSGS"))
    (make-package "KUMPULAN_MSGS"))
  (shadow 'it_control (find-package "KUMPULAN_MSGS")))
(unless (find-package "KUMPULAN_MSGS::IT_CONTROL")
  (make-package "KUMPULAN_MSGS::IT_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude it_control.msg.html


(defclass kumpulan_msgs::it_control
  :super ros::object
  :slots (_lastRodaKiri _lastRodaKanan ))

(defmethod kumpulan_msgs::it_control
  (:init
   (&key
    ((:lastRodaKiri __lastRodaKiri) 0)
    ((:lastRodaKanan __lastRodaKanan) 0)
    )
   (send-super :init)
   (setq _lastRodaKiri (round __lastRodaKiri))
   (setq _lastRodaKanan (round __lastRodaKanan))
   self)
  (:lastRodaKiri
   (&optional __lastRodaKiri)
   (if __lastRodaKiri (setq _lastRodaKiri __lastRodaKiri)) _lastRodaKiri)
  (:lastRodaKanan
   (&optional __lastRodaKanan)
   (if __lastRodaKanan (setq _lastRodaKanan __lastRodaKanan)) _lastRodaKanan)
  (:serialization-length
   ()
   (+
    ;; int64 _lastRodaKiri
    8
    ;; int64 _lastRodaKanan
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _lastRodaKiri
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lastRodaKiri (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lastRodaKiri) (= (length (_lastRodaKiri . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lastRodaKiri . bv) 0) 0) s)
              (write-long (ash (elt (_lastRodaKiri . bv) 1) -1) s))
             ((and (class _lastRodaKiri) (= (length (_lastRodaKiri . bv)) 1)) ;; big1
              (write-long (elt (_lastRodaKiri . bv) 0) s)
              (write-long (if (>= _lastRodaKiri 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lastRodaKiri s)(write-long (if (>= _lastRodaKiri 0) 0 #xffffffff) s)))
     ;; int64 _lastRodaKanan
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lastRodaKanan (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lastRodaKanan) (= (length (_lastRodaKanan . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lastRodaKanan . bv) 0) 0) s)
              (write-long (ash (elt (_lastRodaKanan . bv) 1) -1) s))
             ((and (class _lastRodaKanan) (= (length (_lastRodaKanan . bv)) 1)) ;; big1
              (write-long (elt (_lastRodaKanan . bv) 0) s)
              (write-long (if (>= _lastRodaKanan 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lastRodaKanan s)(write-long (if (>= _lastRodaKanan 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _lastRodaKiri
#+(or :alpha :irix6 :x86_64)
      (setf _lastRodaKiri (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lastRodaKiri (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _lastRodaKanan
#+(or :alpha :irix6 :x86_64)
      (setf _lastRodaKanan (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lastRodaKanan (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get kumpulan_msgs::it_control :md5sum-) "60681b7a9d7a45af768b7da63ee97fec")
(setf (get kumpulan_msgs::it_control :datatype-) "kumpulan_msgs/it_control")
(setf (get kumpulan_msgs::it_control :definition-)
      "int64 lastRodaKiri
int64 lastRodaKanan

")



(provide :kumpulan_msgs/it_control "60681b7a9d7a45af768b7da63ee97fec")


