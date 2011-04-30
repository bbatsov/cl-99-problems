;; 1.07 (**) Flatten a nested list structure.

(defun flatten (lst)
  (labels ((flatten* (lst result)
             (cond
               ((null lst) result)
               ((atom lst) (cons lst result))
               (t (flatten* (first lst) (flatten* (rest lst) result))))))
    (flatten* lst nil)))
