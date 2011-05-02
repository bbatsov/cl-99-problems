;; 1.14 (*) Duplicate the elements of a list.
(in-package #:lisp-problems)

(defun duplicate-elems (lst)
  (flatten (mapcar (lambda (x) (list x x)) lst)))
