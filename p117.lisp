;; 1.17 (*) Split a list into two parts; the length of the first part
;; is given.

(in-package #:lisp-problems)

(defun split (lst length)
  (labels ((split* (lst result index)
             (cond
               ((null lst) (nreverse result))
               ((< index length) (split* (rest lst) (cons (first lst) result) (1+ index)))
               (t (list (nreverse result) lst)))))
    (split* lst nil 0)))
