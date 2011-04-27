;; 1.01 (*) Find the last element of a list.

(defun my-last1 (lst)
  (first (reverse lst)))

(defun my-last2 (lst)
  (if (null (rest lst))
      (first lst)
      (my-last2 (rest lst))))
