;; 1.12 (**) Decode a run-length encoded list.
(in-package #:lisp-problems)

(defun decode (lst)
  (flatten (mapcar (lambda (x)
             (if (listp x)
                 (loop repeat (first x) collect (second x))
                 x))
           lst)))
