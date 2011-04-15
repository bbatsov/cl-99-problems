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
(defun my-flatten (lst)
  (declare (optimize debug))
  (labels ((my-flatten* (lst result)
             (cond
               ((null lst) result)
               ((atom (car lst)) (cons (car lst)
                                       (my-flatten* (cdr lst) result)))
               (t (append
                   (my-flatten* (car lst) nil)
                   (my-flatten* (cdr lst) nil))))))
    (my-flatten* lst nil)))

;; P08 Eliminate consecutive duplicates of list elements.
(defun compress (list)
  (let ((acc nil))
    (dolist (x list acc)
      (unless (equal x (car acc))
        (push x acc)))
    (reverse acc)))

;; P09 Pack consecutive duplicates of list elements into sublists.
(defun pack (lst)
  (declare (optimize debug))
  (let ((result nil)
        (tmp nil))
    (dolist (x lst)
      (if (or (not tmp) (equal (car tmp) x))
          (push x tmp)
          (and (push tmp result) (setq tmp (list x)))))
    (reverse (push tmp result))))

;; P10 Run-length encoding of a list.
(defun encode (lst)
  (mapcar (lambda (x) (list (length x) (car x))) (pack lst)))

;; P11
(defun encode-modified (lst)
  (mapcar (lambda (x)
            (if (> (length x) 1)
                (list (length x) (car x))
                (car x)))
          (pack lst)))

;; P12
(defun decode (lst)
  (my-flatten (mapcar (lambda (x)
                        (if (atom x)
                            x
                            (loop repeat (car x) collect (cadr x)))) lst)))

;; P13

;; P14
(defun dupli (lst)
  (my-flatten (mapcar (lambda (x) (list x x)) lst)))

;; P15
(defun repli (lst n)
  (my-flatten (mapcar (lambda (x)
                        (loop repeat n collect x)) lst)))
