(in-package :cl-user)
(defpackage testtravis-test
  (:use :cl
        :testtravis
        :testtravis.mod
        :prove))
(in-package :testtravis-test)

;; NOTE: To run this test file, execute `(asdf:test-system :testtravis)' in your Lisp.


(plan 5)

;; blah blah blah.

(is (fact 5) 120)
(isnt (fact 4) 33)
(is (+ 1 1) (1+ 1))
(is (greeting "nyan neko") "nyan neko")
(is 0 0)

(finalize)
