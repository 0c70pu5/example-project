(in-package :example-project)

(defun create-file ()
  (with-open-file (stream "./file.txt" :direction :output)
    (format stream "Some text.")))
