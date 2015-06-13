(in-package :cl-user)
(defpackage testtravis
  (:use :cl)
  (:export 
    :fact
    )
  )
(in-package :testtravis)

;; blah blah blah.


(defun fact (n)
  (if (zerop n)
    1 (* n (fact (1- n)))))
