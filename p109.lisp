;; 1.09 (**) Pack consecutive duplicates of list elements into
;; sublists.
(in-package #:lisp-problems)

(defun pack (lst)
  (let (result tmp)
    (dolist (elem lst (reverse (push tmp result)))
      (if (or (null tmp) (equal elem (first tmp))) (push elem tmp)
          (progn
            (push tmp result)
            (setf tmp nil)
            (push elem tmp))))))
