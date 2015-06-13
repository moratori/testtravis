#|
  This file is a part of testtravis project.
|#

(in-package :cl-user)
(defpackage testtravis-asd
  (:use :cl :asdf))
(in-package :testtravis-asd)

(defsystem testtravis
  :version "0.1"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "testtravis") 
                 (:file "mod"))))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op testtravis-test))))
