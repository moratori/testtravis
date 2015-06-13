
(in-package :cl-user)
(defpackage :testtravis.mod-test
  (:use :cl 
        :testtravis.mod 
        :prove
        )
  )
(in-package :testtravis.mod-test)



(plan 1)

(is (greeting "nyaaa~n") "nyaaa~n")

(finalize)
