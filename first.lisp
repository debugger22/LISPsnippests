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
(setq arg2 54)
;;Conditinal to check if two atoms are equal. Note that eq works only with atoms and not lists.
(if (eq arg1 arg2) (format t "Both arguments are equal.~%") (format t "Both arguments are not equal.~%"))
