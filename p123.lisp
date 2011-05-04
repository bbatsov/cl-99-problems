;; 1.23 (**) Extract a given number of randomly selected elements from
;; a list.
(in-package #:lisp-problems)

(defun rnd-select (lst n)
  (loop repeat n with l = (length lst) collect (nth (random l) lst)))
