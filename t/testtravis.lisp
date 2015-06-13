(in-package :cl-user)
(defpackage testtravis-test
  (:use :cl
        :testtravis
        :prove))
(in-package :testtravis-test)

;; NOTE: To run this test file, execute `(asdf:test-system :testtravis)' in your Lisp.


(plan 5)


(is (fact 5) 120)
(isnt (fact 4) 33)
(is (+ 1 1) (1+ 1))
(is 0 0)
(is 1 1)

(finalize)
