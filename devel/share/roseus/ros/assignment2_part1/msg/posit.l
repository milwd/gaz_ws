;; Auto-generated. Do not edit!


(when (boundp 'assignment2_part1::posit)
  (if (not (find-package "ASSIGNMENT2_PART1"))
    (make-package "ASSIGNMENT2_PART1"))
  (shadow 'posit (find-package "ASSIGNMENT2_PART1")))
(unless (find-package "ASSIGNMENT2_PART1::POSIT")
  (make-package "ASSIGNMENT2_PART1::POSIT"))

(in-package "ROS")
;;//! \htmlinclude posit.msg.html


(defclass assignment2_part1::posit
  :super ros::object
  :slots (_x _y _vel_x _vel_z ))

(defmethod assignment2_part1::posit
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:vel_x __vel_x) 0.0)
    ((:vel_z __vel_z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _vel_x (float __vel_x))
   (setq _vel_z (float __vel_z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:vel_x
   (&optional __vel_x)
   (if __vel_x (setq _vel_x __vel_x)) _vel_x)
  (:vel_z
   (&optional __vel_z)
   (if __vel_z (setq _vel_z __vel_z)) _vel_z)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _vel_x
    4
    ;; float32 _vel_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_x
       (sys::poke _vel_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_z
       (sys::poke _vel_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_x
     (setq _vel_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_z
     (setq _vel_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get assignment2_part1::posit :md5sum-) "f201243154d36d221805a8f4ef1f7843")
(setf (get assignment2_part1::posit :datatype-) "assignment2_part1/posit")
(setf (get assignment2_part1::posit :definition-)
      "float32 x
float32 y
float32 vel_x
float32 vel_z

")



(provide :assignment2_part1/posit "f201243154d36d221805a8f4ef1f7843")


