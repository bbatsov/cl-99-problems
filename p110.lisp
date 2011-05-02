;; 1.10 (*) Run-length encoding of a list.
(in-package #:lisp-problems)

(defun encode (lst)
  (mapcar (lambda (x)
            (list (length x) (first x)))
          (pack lst)))
