(defun resolve (clause1 clause2) 
		(dolist (i clause1) 
			(if (member (- i) clause2) 
				(progn 
					(delete i clause1) 
					(delete  (- i) clause2)
					(return-from resolve (union clause1 clause2))
				)
			)
		)
		(return-from resolve (list clause1 clause2))
)

(print (resolve '(1 -1 2 3 -3) '(2 3 -8)))