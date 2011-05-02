;; 1.16 (**) Drop every N'th element from a list.

(defun drop (lst n)
  (loop
     for x in lst
     with count = 0
     do (incf count)
     unless (zerop (mod count n)) collect x))
