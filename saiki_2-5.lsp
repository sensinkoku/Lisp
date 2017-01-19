(defun fib(n)
  (cond ((= n 0) 1)
	((= n 1) 1)
	(t (+ (fib(- n 1)) (fib(- n 2))))))

(defun len(x)
  (if (null x) 0
   (+ 1 (len (cdr x)))))

(defun my-nth(x y)
  (if (= x 0) (first y)
    (my-nth (- x 1)(rest y)))
  )
(defun my-append(x y)
  (if (null x) y
    (cons(first x) (my-append(rest x)y))))

(defun add-up(x)
  (if (null x) 0
    (+ (first x) (add-up (rest x)))))

(defun laugh (n)
  (if (= n 0)
      nil
    (cons 'ha (laugh (- n 1)))))

(defun laugh2(n)
  (cond((zerop n) nil)
       (t (cons 'ha (laugh (- n 1))))))

(defun cd (x)
  (if (= x 0) nil
    (cons x (cd (- x 1)))))
(defun square-list (x)
  (if (null x) nil
  (cons (* (first x) (first x)) (square-list(rest x)))))

