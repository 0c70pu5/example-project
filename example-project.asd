#|
  This file is a part of example-project project.
|#

(defsystem "example-project"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "packages")
                 (:file "lib" :depends-on ("package"))
                 (:file "parser" :depends-on ("package")))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "example-project-test"))))
