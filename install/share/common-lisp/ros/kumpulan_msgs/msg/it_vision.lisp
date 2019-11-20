; Auto-generated. Do not edit!


(cl:in-package kumpulan_msgs-msg)


;//! \htmlinclude it_vision.msg.html

(cl:defclass <it_vision> (roslisp-msg-protocol:ros-message)
  ((theta
    :reader theta
    :initarg :theta
    :type cl:integer
    :initform 0))
)

(cl:defclass it_vision (<it_vision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <it_vision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'it_vision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kumpulan_msgs-msg:<it_vision> is deprecated: use kumpulan_msgs-msg:it_vision instead.")))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <it_vision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kumpulan_msgs-msg:theta-val is deprecated.  Use kumpulan_msgs-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <it_vision>) ostream)
  "Serializes a message object of type '<it_vision>"
  (cl:let* ((signed (cl:slot-value msg 'theta)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <it_vision>) istream)
  "Deserializes a message object of type '<it_vision>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'theta) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<it_vision>)))
  "Returns string type for a message object of type '<it_vision>"
  "kumpulan_msgs/it_vision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'it_vision)))
  "Returns string type for a message object of type 'it_vision"
  "kumpulan_msgs/it_vision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<it_vision>)))
  "Returns md5sum for a message object of type '<it_vision>"
  "579bfe7466c60f66eac5cf61a80736f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'it_vision)))
  "Returns md5sum for a message object of type 'it_vision"
  "579bfe7466c60f66eac5cf61a80736f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<it_vision>)))
  "Returns full string definition for message of type '<it_vision>"
  (cl:format cl:nil "int64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'it_vision)))
  "Returns full string definition for message of type 'it_vision"
  (cl:format cl:nil "int64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <it_vision>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <it_vision>))
  "Converts a ROS message object to a list"
  (cl:list 'it_vision
    (cl:cons ':theta (theta msg))
))
