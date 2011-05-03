;; 1.20 (*) Remove the K'th element from a list.
(in-package #:lisp-problems)

(defun remove-nth (lst n)
  (loop
     for x in lst
     with index = -1
     do (incf index)
     unless (= index n)
     collect x))
