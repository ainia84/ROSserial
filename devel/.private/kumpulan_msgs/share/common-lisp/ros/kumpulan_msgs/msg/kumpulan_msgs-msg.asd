
(cl:in-package :asdf)

(defsystem "kumpulan_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "arduino_it" :depends-on ("_package_arduino_it"))
    (:file "_package_arduino_it" :depends-on ("_package"))
    (:file "it_control" :depends-on ("_package_it_control"))
    (:file "_package_it_control" :depends-on ("_package"))
    (:file "it_vision" :depends-on ("_package_it_vision"))
    (:file "_package_it_vision" :depends-on ("_package"))
  ))