; Auto-generated. Do not edit!


(cl:in-package assignment2_part1-srv)


;//! \htmlinclude last_destination-request.msg.html

(cl:defclass <last_destination-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass last_destination-request (<last_destination-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <last_destination-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'last_destination-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment2_part1-srv:<last_destination-request> is deprecated: use assignment2_part1-srv:last_destination-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <last_destination-request>) ostream)
  "Serializes a message object of type '<last_destination-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <last_destination-request>) istream)
  "Deserializes a message object of type '<last_destination-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<last_destination-request>)))
  "Returns string type for a service object of type '<last_destination-request>"
  "assignment2_part1/last_destinationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'last_destination-request)))
  "Returns string type for a service object of type 'last_destination-request"
  "assignment2_part1/last_destinationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<last_destination-request>)))
  "Returns md5sum for a message object of type '<last_destination-request>"
  "6d15e47176edc2b7745ed97161ee1d5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'last_destination-request)))
  "Returns md5sum for a message object of type 'last_destination-request"
  "6d15e47176edc2b7745ed97161ee1d5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<last_destination-request>)))
  "Returns full string definition for message of type '<last_destination-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'last_destination-request)))
  "Returns full string definition for message of type 'last_destination-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <last_destination-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <last_destination-request>))
  "Converts a ROS message object to a list"
  (cl:list 'last_destination-request
))
;//! \htmlinclude last_destination-response.msg.html

(cl:defclass <last_destination-response> (roslisp-msg-protocol:ros-message)
  ((last_destination_x
    :reader last_destination_x
    :initarg :last_destination_x
    :type cl:float
    :initform 0.0)
   (last_destination_y
    :reader last_destination_y
    :initarg :last_destination_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass last_destination-response (<last_destination-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <last_destination-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'last_destination-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment2_part1-srv:<last_destination-response> is deprecated: use assignment2_part1-srv:last_destination-response instead.")))

(cl:ensure-generic-function 'last_destination_x-val :lambda-list '(m))
(cl:defmethod last_destination_x-val ((m <last_destination-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment2_part1-srv:last_destination_x-val is deprecated.  Use assignment2_part1-srv:last_destination_x instead.")
  (last_destination_x m))

(cl:ensure-generic-function 'last_destination_y-val :lambda-list '(m))
(cl:defmethod last_destination_y-val ((m <last_destination-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment2_part1-srv:last_destination_y-val is deprecated.  Use assignment2_part1-srv:last_destination_y instead.")
  (last_destination_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <last_destination-response>) ostream)
  "Serializes a message object of type '<last_destination-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'last_destination_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'last_destination_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <last_destination-response>) istream)
  "Deserializes a message object of type '<last_destination-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_destination_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_destination_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<last_destination-response>)))
  "Returns string type for a service object of type '<last_destination-response>"
  "assignment2_part1/last_destinationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'last_destination-response)))
  "Returns string type for a service object of type 'last_destination-response"
  "assignment2_part1/last_destinationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<last_destination-response>)))
  "Returns md5sum for a message object of type '<last_destination-response>"
  "6d15e47176edc2b7745ed97161ee1d5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'last_destination-response)))
  "Returns md5sum for a message object of type 'last_destination-response"
  "6d15e47176edc2b7745ed97161ee1d5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<last_destination-response>)))
  "Returns full string definition for message of type '<last_destination-response>"
  (cl:format cl:nil "float32 last_destination_x~%float32 last_destination_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'last_destination-response)))
  "Returns full string definition for message of type 'last_destination-response"
  (cl:format cl:nil "float32 last_destination_x~%float32 last_destination_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <last_destination-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <last_destination-response>))
  "Converts a ROS message object to a list"
  (cl:list 'last_destination-response
    (cl:cons ':last_destination_x (last_destination_x msg))
    (cl:cons ':last_destination_y (last_destination_y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'last_destination)))
  'last_destination-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'last_destination)))
  'last_destination-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'last_destination)))
  "Returns string type for a service object of type '<last_destination>"
  "assignment2_part1/last_destination")