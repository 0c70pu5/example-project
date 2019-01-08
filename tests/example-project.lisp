(defpackage example-project-test
  (:use :cl
        :example-project
        :prove))
(in-package :example-project-test)

;; NOTE: To run this test file, execute `(asdf:test-system :example-project)' in your Lisp.

(plan nil)

;; blah blah blah.

(finalize)
