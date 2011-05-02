;; 1.11 (*) Modified run-length encoding.
(in-package #:lisp-problems)

(defun encode-modified (lst)
  (mapcar (lambda (x)
            (if (rest x) (list (length x) (first x))
                (first x)))
          (pack lst)))
