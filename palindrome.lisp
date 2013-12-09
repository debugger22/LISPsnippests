(defun mylength (str) (cond 
	((null str) 0)
		(t (+ 1 (mylength (cdr str))))
	)
)

(defun mypalindrome (str)
		(setq len (- (mylength str) 1))
		(setq count 0)
		(setq flag 1)
		(loop 
			
			(if (not (equal (nth count str) (nth (- len count) str)))  (setq flag 0) )
			(setq count (+ 1 count))
			(if (or (> count (/ len 2)) (equal count (/ len 2))) (return))
		)
		(if (equal flag 1)  'palindrome 'nopalindrome)

	
)

(print (mypalindrome '(a a a a)))