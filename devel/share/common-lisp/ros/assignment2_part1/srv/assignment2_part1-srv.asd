
(cl:in-package :asdf)

(defsystem "assignment2_part1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "last_destination" :depends-on ("_package_last_destination"))
    (:file "_package_last_destination" :depends-on ("_package"))
  ))