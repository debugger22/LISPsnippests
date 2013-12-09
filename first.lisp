;;  Author: Sudhanshu Mishra

(setq botname 'Jarvis)	;;Setting the name of the bot
(setq botmaster '(Sudhanshu Mishra))	;;Setting the name of botmaster
(setq answers '(Yes No))	;;Setting options for answers
(format t "Hello World~%")
(format t "I am ~s~%" botname)
(format t "I was created by ~s ~s~%" (car botmaster) (cadr botmaster))
(defun say_yes () (format t "~s~%" (car answers)))
(defun say_no () (format t "~s~%" (cadr answers)))
(defun ready () (format t "I am ready"))

;;Function to compare two numbers
(defun compare (lst) (cond ( (> (car lst) (cadr lst)) (format t "First atom is greater~%"))
							( (< (car lst) (cadr lst)) (format t "Second atom is greater~%"))
							( t (format t "Both atoms are equal~%"))))

(compare '(87 654))
(compare '(54 54))

(defun add (lst) (+ (car lst) (cadr lst)))	;;Function to add
(defun subtract (lst) (- (car lst) (cadr lst)))	;;Function to subtract
(defun multiply (lst) (* (car lst) (cadr lst)))	;;Function to multiply
(defun divide (lst) (/ (car lst) (cadr lst)))	;;Function to divide

(format t "The answer is: ~s~%" (write-to-string (multiply '(9 3))))

(setq argument '(hello))
;;Conditional to check if the argument is an atom
(if (atom argument) (format t "Argument is an atom.~%") (format t "Argument is not an atom.~%"))
;;Conditional to check if the argument is a list	
(if (listp argument) (format t "Argument is a list.~%") (format t "Argument is not a list.~%"))	

(setq arg1 81)
(setq arg2 0)
;;Conditinal to check if two atoms are equal. Note that eq works only with atoms and not lists.
(if (eq arg1 arg2) (format t "Both arguments are equal.~%") (format t "Both arguments are not equal.~%"))
;;Conditional to check if the argument is a number or not.
(if (numberp arg1) (format t "Argument is a number.~%") (format t "Argument is not a number.~%"))
;;Conditional to check if the argument is zero or not.
(if (zerop arg2) (format t "Argument evaluates to zero.~%") (format t "Argument does not evaluates to zero.~%"))

(setq decreasing '(5454 554 98 57 49 6 2 1))
(setq increasing '(1 12 23 54 65 87 98 312 645 798 2134 6578 9898))
;;Conditional to check strictly descending order.
(if (> (car decreasing) (cadr decreasing) (caddr decreasing) (cadddr decreasing))
 (format t "Arguments are in descending order.~%") (format t "Arguments are not in descending order.~%")) 
;;Conditional to check strictly ascending order.
(if (< (car increasing) (cadr increasing) (caddr increasing) (cadddr increasing))
 (format t "Arguments are in ascending order.~%") (format t "Arguments are not in ascending order.~%")) 
;;Conditional to check for a negative number.
(if (minusp -10) (format t "Argument is a negative number.~%") (format t "Argument is not a negative number.~%"))
;;Conditional to check for a nil.
(if (null nil) (format t "Argument is a nil.~%") (format t "Argument is not a nil.~%"))

(if (and 1 2 3 4 5 5 765 8 nil 789) (format t  "'And' of the data returned true~%") (format t "'And' of the data returned false~%"))
(if (or nil nil 3 nil) (format t "'Or of the data returned true~%") (format t "'Or' of the data returned false~%"))

;;function to calculate sum of a list
(defun sum (lst) (format t "The sum is ~s~%" (write-to-string (apply '+ lst))))
(sum '(1 4 6 4))

;;
