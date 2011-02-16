;; P01 Find the last box of a list.
(defun my-last (list)
  (let ((rest (cdr list)))
    (if rest
        (my-last rest)
        list)))

;; P02 Find the last but one box of a list.
(defun my-but-last (list)
  (let ((rest (cddr list)))
    (if rest
        (my-but-last rest)
        list)))

;; P03 Find the K'th element of a list.
(defun element-at (list index)
  (labels ((element-at2 (list index current)
           (if list
               (if (and (= index current))
                   (car list)
                   (element-at2 (cdr list) index (1+ current)))
               nil)))
    (element-at2 list index 0)))

;; P04 Find the number of elements of a list.
(defun my-length (list)
  (labels ((my-length2 (list size)
             (if (not list)
                 size
                 (my-length2 (cdr list) (1+ size)))))
    (my-length2 list 0)))

;; P05 Reverse a list.
(defun my-reverse (list)
   (if (not list)
       nil
       (append (my-reverse (cdr list)) (list (car list)))))

;; P06 Find out whether a list is a palindrome.
(defun palindrome-p (list)
  (equal list (my-reverse list)))

;; P07 Flatten a nested list structure.
(defun my-flatten (list)
  )
