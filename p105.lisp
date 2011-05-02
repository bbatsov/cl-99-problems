;; 1.05 (*) Reverse a list.
(in-package #:lisp-problems)

(defun my-reverse (lst)
  (let (result)
    (dolist (elem lst result)
      (push elem result))))

(defun my-reverse (lst)
  (loop for elem in lst with result do (push elem result) 
     finally (return result)))

(defun my-reverse (lst)
  (labels ((my-reverse* (lst result)
             (cond
               ((null lst) result)
               (t (my-reverse* (rest lst) (cons (first lst) result))))))
    (my-reverse* lst nil)))
