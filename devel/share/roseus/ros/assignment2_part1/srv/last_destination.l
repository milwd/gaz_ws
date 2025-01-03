;; Auto-generated. Do not edit!


(when (boundp 'assignment2_part1::last_destination)
  (if (not (find-package "ASSIGNMENT2_PART1"))
    (make-package "ASSIGNMENT2_PART1"))
  (shadow 'last_destination (find-package "ASSIGNMENT2_PART1")))
(unless (find-package "ASSIGNMENT2_PART1::LAST_DESTINATION")
  (make-package "ASSIGNMENT2_PART1::LAST_DESTINATION"))
(unless (find-package "ASSIGNMENT2_PART1::LAST_DESTINATIONREQUEST")
  (make-package "ASSIGNMENT2_PART1::LAST_DESTINATIONREQUEST"))
(unless (find-package "ASSIGNMENT2_PART1::LAST_DESTINATIONRESPONSE")
  (make-package "ASSIGNMENT2_PART1::LAST_DESTINATIONRESPONSE"))

(in-package "ROS")





(defclass assignment2_part1::last_destinationRequest
  :super ros::object
  :slots ())

(defmethod assignment2_part1::last_destinationRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass assignment2_part1::last_destinationResponse
  :super ros::object
  :slots (_last_destination_x _last_destination_y ))

(defmethod assignment2_part1::last_destinationResponse
  (:init
   (&key
    ((:last_destination_x __last_destination_x) 0.0)
    ((:last_destination_y __last_destination_y) 0.0)
    )
   (send-super :init)
   (setq _last_destination_x (float __last_destination_x))
   (setq _last_destination_y (float __last_destination_y))
   self)
  (:last_destination_x
   (&optional __last_destination_x)
   (if __last_destination_x (setq _last_destination_x __last_destination_x)) _last_destination_x)
  (:last_destination_y
   (&optional __last_destination_y)
   (if __last_destination_y (setq _last_destination_y __last_destination_y)) _last_destination_y)
  (:serialization-length
   ()
   (+
    ;; float32 _last_destination_x
    4
    ;; float32 _last_destination_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _last_destination_x
       (sys::poke _last_destination_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _last_destination_y
       (sys::poke _last_destination_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _last_destination_x
     (setq _last_destination_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _last_destination_y
     (setq _last_destination_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass assignment2_part1::last_destination
  :super ros::object
  :slots ())

(setf (get assignment2_part1::last_destination :md5sum-) "6d15e47176edc2b7745ed97161ee1d5f")
(setf (get assignment2_part1::last_destination :datatype-) "assignment2_part1/last_destination")
(setf (get assignment2_part1::last_destination :request) assignment2_part1::last_destinationRequest)
(setf (get assignment2_part1::last_destination :response) assignment2_part1::last_destinationResponse)

(defmethod assignment2_part1::last_destinationRequest
  (:response () (instance assignment2_part1::last_destinationResponse :init)))

(setf (get assignment2_part1::last_destinationRequest :md5sum-) "6d15e47176edc2b7745ed97161ee1d5f")
(setf (get assignment2_part1::last_destinationRequest :datatype-) "assignment2_part1/last_destinationRequest")
(setf (get assignment2_part1::last_destinationRequest :definition-)
      "---
float32 last_destination_x
float32 last_destination_y

")

(setf (get assignment2_part1::last_destinationResponse :md5sum-) "6d15e47176edc2b7745ed97161ee1d5f")
(setf (get assignment2_part1::last_destinationResponse :datatype-) "assignment2_part1/last_destinationResponse")
(setf (get assignment2_part1::last_destinationResponse :definition-)
      "---
float32 last_destination_x
float32 last_destination_y

")



(provide :assignment2_part1/last_destination "6d15e47176edc2b7745ed97161ee1d5f")


