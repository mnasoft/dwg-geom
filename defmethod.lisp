;;;; defmethod.lisp

(in-package #:dwg-geom)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;    print-object    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod print-object ((pt point) s)
  (format s "\"_non\" \"~A,~A,~A\"" (point-x pt) (point-y pt) (point-z pt)))

(defmethod print-object ((ln line) s)
  (format s "~A" (line-start ln))
  (format s " ")
  (format s "~A" (line-end   ln)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;    draw    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod draw ((ln line))
  (format t "~&(command \"_line\" ~A \"\")" ln))
