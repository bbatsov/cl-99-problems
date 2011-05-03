;; 1.18 (**) Extract a slice from a list.
(in-package #:lisp-problems)

(defun slice (lst start end)
  (loop
     for x in lst
     with current = -1
     do (incf current)
     when (<= start current end)
     collect x))
