;; 1.08 (**) Eliminate consecutive duplicates of list elements.

(defun compress (lst)
  (labels ((compress* (lst result)
             (cond
               ((null lst) result)
               ((equal (first lst) (second lst)) (compress* (rest lst) result))
               (t (compress* (rest lst) (cons (first lst) result))))))
     (reverse (compress* lst nil))))
