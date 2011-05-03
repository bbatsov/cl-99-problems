;; 1.19 (**) Rotate a list N places to the left.
(in-package #:lisp-problems)

(defun rotate (lst n)
  (let ((n-int (if (plusp n) n (- (length lst) (abs n)))))
    (labels ((rotate* (lst index result)
               (cond
                 ((null lst) result)
                 ((< index n-int) (rotate* (rest lst) (1+ index) (cons (first lst) result)))
                 (t (append lst result)))))
      (rotate* lst 0 nil))))
