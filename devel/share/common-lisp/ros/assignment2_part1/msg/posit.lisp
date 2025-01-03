; Auto-generated. Do not edit!


(cl:in-package assignment2_part1-msg)


;//! \htmlinclude posit.msg.html

(cl:defclass <posit> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (vel_x
    :reader vel_x
    :initarg :vel_x
    :type cl:float
    :initform 0.0)
   (vel_z
    :reader vel_z
    :initarg :vel_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass posit (<posit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <posit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'posit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment2_part1-msg:<posit> is deprecated: use assignment2_part1-msg:posit instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <posit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment2_part1-msg:x-val is deprecated.  Use assignment2_part1-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <posit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment2_part1-msg:y-val is deprecated.  Use assignment2_part1-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'vel_x-val :lambda-list '(m))
(cl:defmethod vel_x-val ((m <posit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment2_part1-msg:vel_x-val is deprecated.  Use assignment2_part1-msg:vel_x instead.")
  (vel_x m))

(cl:ensure-generic-function 'vel_z-val :lambda-list '(m))
(cl:defmethod vel_z-val ((m <posit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment2_part1-msg:vel_z-val is deprecated.  Use assignment2_part1-msg:vel_z instead.")
  (vel_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <posit>) ostream)
  "Serializes a message object of type '<posit>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <posit>) istream)
  "Deserializes a message object of type '<posit>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<posit>)))
  "Returns string type for a message object of type '<posit>"
  "assignment2_part1/posit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'posit)))
  "Returns string type for a message object of type 'posit"
  "assignment2_part1/posit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<posit>)))
  "Returns md5sum for a message object of type '<posit>"
  "f201243154d36d221805a8f4ef1f7843")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'posit)))
  "Returns md5sum for a message object of type 'posit"
  "f201243154d36d221805a8f4ef1f7843")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<posit>)))
  "Returns full string definition for message of type '<posit>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 vel_x~%float32 vel_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'posit)))
  "Returns full string definition for message of type 'posit"
  (cl:format cl:nil "float32 x~%float32 y~%float32 vel_x~%float32 vel_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <posit>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <posit>))
  "Converts a ROS message object to a list"
  (cl:list 'posit
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':vel_x (vel_x msg))
    (cl:cons ':vel_z (vel_z msg))
))
