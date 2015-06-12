(in-package :cl-user)
(defpackage testtravis-test
  (:use :cl
        :testtravis
        :prove))
(in-package :testtravis-test)

;; NOTE: To run this test file, execute `(asdf:test-system :testtravis)' in your Lisp.

(plan nil)

;; blah blah blah.

(finalize)
