;; 1.01 (*) Find the last element of a list.

;; simple but not particularly efficient
(defun my-last1 (lst)
  (first (reverse lst)))

;; simple recursive solution
(defun my-last2 (lst)
  (if (null (rest lst))
      (first lst)
      (my-last2 (rest lst))))
