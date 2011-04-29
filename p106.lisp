;; 1.06 (*) Find out whether a list is a palindrome.

(defun palindrome-p (lst)
  (equal lst (reverse lst)))
