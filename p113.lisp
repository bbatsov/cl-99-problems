;; 1.13 (**) Run-length encoding of a list (direct solution).
(in-package #:lisp-problems)

(defun encode-direct (lst)
  (let (result
        (count 0)
        (current (first lst)))
    (dolist (elem lst (reverse (push (if (> count 1) (list count current) current) result)))
      (if (equal elem current)
          (incf count)
          (progn
            (push
             (if (> count 1)
                 (list count current)
                 current)
             result)
            (setf count 1)
            (setf current elem))))))
