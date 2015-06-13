#|
  This file is a part of testtravis project.
|#

(in-package :cl-user)
(defpackage testtravis-test-asd
  (:use :cl :asdf))
(in-package :testtravis-test-asd)

(defsystem testtravis-test
  :author ""
  :license ""
  :depends-on (:testtravis
               :prove)
  :components ((:module "t"
                :components
                ((:test-file "testtravis")
                 )))

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
