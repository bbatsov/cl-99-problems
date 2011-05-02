;; 1.04 (*) Find the number of elements of a list.
(in-package #:lisp-problems)

(defun my-length (lst)
  (loop for x in lst count x))

(defun my-length (lst)
  (let ((length 0))
    (dolist (elem lst length)
      (incf length))))

(defun my-length (lst)
  (if (null lst)
      0
      (1+ (my-length (rest lst)))))

(defun my-length-tr (lst)
  (labels ((my-length-tr* (lst length)
             (if (null lst) length
                 (my-length-tr* (rest lst) (1+ length)))))
    (my-length-tr* lst 0)))
