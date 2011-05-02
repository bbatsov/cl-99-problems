;; 1.03 (*) Find the nth element of a list.
(in-package #:lisp-problems)

(defun my-nth (lst index)
  (let ((current 0))
    (dolist (elem lst)
      (if (= current index)
          (return elem)
          (incf current)))))
