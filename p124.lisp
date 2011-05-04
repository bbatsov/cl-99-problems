;; 1.24 (*) Lotto: Draw N different random numbers from the set 1..M.
(in-package #:lisp-problems)

(defun lotto-select (n m)
  (rnd-select (range 1 m) n))
