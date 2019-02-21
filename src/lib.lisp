(in-package :example-project)

(defun reverse-list (seq &optional result)
  (cond
    (seq
     (reverse-list (cdr seq) (cons (car seq) result)))
    (result)))

(defun sort-func (left right &optional result)
  ;;(print "sort-func: ")
  ;;(print left)
  ;;(print right)
  ;;(print result)
  (cond
    ((and (not (car left)) (not (car right)))
     result)
    ((not (car left))
     (sort-func
      left
      (cdr right)
      (cons (car right) result)))
    ((not (car right))
     (sort-func
      (cdr left)
      right
      (cons (car left) result)))
    ((> (car left) (car right))
     (sort-func
      (cdr left)
      right
      (cons (car left) result)))
    ((<= (car left) (car right))
     (sort-func
      left
      (cdr right)
      (cons (car right) result)))))

(defun devide (seq)
  ;;(print "devide: ")
  ;;(print seq)
  (cond
    ((> (length seq) 1)
     (let*
         ((middle (floor (length seq) 2))
          (left (reverse-list (devide (subseq seq 0 middle))))
          (right (reverse-list (devide (subseq seq middle (length seq))))))
       (sort-func left right nil)))
    (seq)))

;;(sb-profile:profile devide)
;;(devide (list 8 5 9))
;;(sb-profile:report)
