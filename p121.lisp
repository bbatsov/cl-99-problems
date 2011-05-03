;; 1.21 (*) Insert an element at a given position into a list.
(in-package #:lisp-problems)

(defun insert (lst n elem)
  (labels ((insert* (lst index result)
             (cond
               ((null lst) result)
               ((< index n) (insert* (rest lst) (1+ index) (cons (first lst) result)))
               (t (append result (cons elem lst))))))
    (insert* lst 0 nil)))
