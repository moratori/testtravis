
(in-package :cl-user)
(defpackage :testtravis.mod
  (:use :cl
        )
  (:export 
    :greeting
    )
  )
(in-package :testtravis.mod)




(defun greeting (name &optional (stream *standard-output*))
  (format stream "hello, ~A~%" name) name)
