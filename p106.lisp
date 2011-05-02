;; 1.06 (*) Find out whether a list is a palindrome.
(in-package #:lisp-problems)

(defun palindrome-p (lst)
  (equal lst (reverse lst)))
