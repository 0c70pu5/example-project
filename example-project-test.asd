#|
  This file is a part of example-project project.
|#

(defsystem "example-project-test"
  :defsystem-depends-on ("prove-asdf")
  :author ""
  :license ""
  :depends-on ("example-project"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "example-project"))))
  :description "Test system for example-project"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
