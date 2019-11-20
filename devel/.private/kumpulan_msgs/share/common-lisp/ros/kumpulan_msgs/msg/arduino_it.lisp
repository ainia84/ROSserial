; Auto-generated. Do not edit!


(cl:in-package kumpulan_msgs-msg)


;//! \htmlinclude arduino_it.msg.html

(cl:defclass <arduino_it> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0)
   (rpm
    :reader rpm
    :initarg :rpm
    :type cl:integer
    :initform 0))
)

(cl:defclass arduino_it (<arduino_it>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arduino_it>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arduino_it)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kumpulan_msgs-msg:<arduino_it> is deprecated: use kumpulan_msgs-msg:arduino_it instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <arduino_it>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kumpulan_msgs-msg:distance-val is deprecated.  Use kumpulan_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'rpm-val :lambda-list '(m))
(cl:defmethod rpm-val ((m <arduino_it>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kumpulan_msgs-msg:rpm-val is deprecated.  Use kumpulan_msgs-msg:rpm instead.")
  (rpm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arduino_it>) ostream)
  "Serializes a message object of type '<arduino_it>"
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rpm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arduino_it>) istream)
  "Deserializes a message object of type '<arduino_it>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rpm) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arduino_it>)))
  "Returns string type for a message object of type '<arduino_it>"
  "kumpulan_msgs/arduino_it")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arduino_it)))
  "Returns string type for a message object of type 'arduino_it"
  "kumpulan_msgs/arduino_it")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arduino_it>)))
  "Returns md5sum for a message object of type '<arduino_it>"
  "7185bd32d30d0999a697641753b76f72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arduino_it)))
  "Returns md5sum for a message object of type 'arduino_it"
  "7185bd32d30d0999a697641753b76f72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arduino_it>)))
  "Returns full string definition for message of type '<arduino_it>"
  (cl:format cl:nil "int64 distance~%int64 rpm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arduino_it)))
  "Returns full string definition for message of type 'arduino_it"
  (cl:format cl:nil "int64 distance~%int64 rpm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arduino_it>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arduino_it>))
  "Converts a ROS message object to a list"
  (cl:list 'arduino_it
    (cl:cons ':distance (distance msg))
    (cl:cons ':rpm (rpm msg))
))
