;; 1.02 (*) Find the penultimate(last but one) element of a list.

(defun penultimate1 (lst)
  (first (rest (reverse lst))))

(defun penultimate2 (lst)
  (if (null (rest (rest lst)))
      (first lst)
      (penultimate2 (rest lst))))

