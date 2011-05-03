;; 1.22 (*) Create a list containing all integers within a given
;; range.
(in-package #:lisp-problems)

(defun range (start end)
  (loop for x from start to end collect x))


