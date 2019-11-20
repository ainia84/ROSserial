; Auto-generated. Do not edit!


(cl:in-package kumpulan_msgs-msg)


;//! \htmlinclude it_control.msg.html

(cl:defclass <it_control> (roslisp-msg-protocol:ros-message)
  ((lastRodaKiri
    :reader lastRodaKiri
    :initarg :lastRodaKiri
    :type cl:integer
    :initform 0)
   (lastRodaKanan
    :reader lastRodaKanan
    :initarg :lastRodaKanan
    :type cl:integer
    :initform 0))
)

(cl:defclass it_control (<it_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <it_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'it_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kumpulan_msgs-msg:<it_control> is deprecated: use kumpulan_msgs-msg:it_control instead.")))

(cl:ensure-generic-function 'lastRodaKiri-val :lambda-list '(m))
(cl:defmethod lastRodaKiri-val ((m <it_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kumpulan_msgs-msg:lastRodaKiri-val is deprecated.  Use kumpulan_msgs-msg:lastRodaKiri instead.")
  (lastRodaKiri m))

(cl:ensure-generic-function 'lastRodaKanan-val :lambda-list '(m))
(cl:defmethod lastRodaKanan-val ((m <it_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kumpulan_msgs-msg:lastRodaKanan-val is deprecated.  Use kumpulan_msgs-msg:lastRodaKanan instead.")
  (lastRodaKanan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <it_control>) ostream)
  "Serializes a message object of type '<it_control>"
  (cl:let* ((signed (cl:slot-value msg 'lastRodaKiri)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lastRodaKanan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <it_control>) istream)
  "Deserializes a message object of type '<it_control>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lastRodaKiri) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lastRodaKanan) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<it_control>)))
  "Returns string type for a message object of type '<it_control>"
  "kumpulan_msgs/it_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'it_control)))
  "Returns string type for a message object of type 'it_control"
  "kumpulan_msgs/it_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<it_control>)))
  "Returns md5sum for a message object of type '<it_control>"
  "60681b7a9d7a45af768b7da63ee97fec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'it_control)))
  "Returns md5sum for a message object of type 'it_control"
  "60681b7a9d7a45af768b7da63ee97fec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<it_control>)))
  "Returns full string definition for message of type '<it_control>"
  (cl:format cl:nil "int64 lastRodaKiri~%int64 lastRodaKanan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'it_control)))
  "Returns full string definition for message of type 'it_control"
  (cl:format cl:nil "int64 lastRodaKiri~%int64 lastRodaKanan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <it_control>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <it_control>))
  "Converts a ROS message object to a list"
  (cl:list 'it_control
    (cl:cons ':lastRodaKiri (lastRodaKiri msg))
    (cl:cons ':lastRodaKanan (lastRodaKanan msg))
))
