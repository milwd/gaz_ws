;; Auto-generated. Do not edit!


(when (boundp 'assignment2_part1::PlanningResult)
  (if (not (find-package "ASSIGNMENT2_PART1"))
    (make-package "ASSIGNMENT2_PART1"))
  (shadow 'PlanningResult (find-package "ASSIGNMENT2_PART1")))
(unless (find-package "ASSIGNMENT2_PART1::PLANNINGRESULT")
  (make-package "ASSIGNMENT2_PART1::PLANNINGRESULT"))

(in-package "ROS")
;;//! \htmlinclude PlanningResult.msg.html


(defclass assignment2_part1::PlanningResult
  :super ros::object
  :slots ())

(defmethod assignment2_part1::PlanningResult
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

(setf (get assignment2_part1::PlanningResult :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get assignment2_part1::PlanningResult :datatype-) "assignment2_part1/PlanningResult")
(setf (get assignment2_part1::PlanningResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

")



(provide :assignment2_part1/PlanningResult "d41d8cd98f00b204e9800998ecf8427e")


