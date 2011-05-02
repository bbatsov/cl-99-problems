;; 1.15 (**) Duplicate the elements of a list a given number of times.

(defun duplicate-elems (lst n)
  (flatten (mapcar (lambda (x) (loop repeat n collect x)) lst)))
