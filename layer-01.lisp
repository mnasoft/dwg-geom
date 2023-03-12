;;;; dwg-geom.lisp

(in-package :dwg-geom)

(defparameter *la*
  (append 
   '("dt-mid-00-0" "dt-mid-01-0" "dt-mid-04-0" "dt-mid-08-0" "dt-mid-11-0" "dt-mid-14-0" "dt-mid-16-8")
   '("dt-max-00-0" "dt-max-01-0" "dt-max-04-0" "dt-max-08-0" "dt-max-11-0" "dt-max-14-0" "dt-max-16-8")
   '("gt-mid-00-0" "gt-mid-01-0" "gt-mid-04-0" "gt-mid-08-0" "gt-mid-11-0" "gt-mid-14-0" "gt-mid-16-5")
   '("gt-max-00-0" "gt-max-01-0" "gt-max-04-0" "gt-max-08-0" "gt-max-11-0" "gt-max-14-0" "gt-max-16-5")))

(defun acad-layer-new (names)
  (format t "(command ~S ~S \"~{~a~^,~}\" ~S)" "_-layer" "_new" names ""))

(defun acad-layer-set (name)
  (format t "(command ~S ~S ~S ~S)" "_-layer" "_set" name ""))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun acad-n-lines (n)
  (dotimes (i n)
    (format t "~%")))

(defun acad-entsel-car (ename)
  (format t "(progn ")
  (format t "(prompt \"Select ~A:\") " ename)
  (format t "(setq ~A (car (entsel))) " ename)
  (format t ")~%"))

(defun acad-mnas-a1 (x-axis y-axis p-list-name)
  (acad-layer-set p-list-name)
  (acad-n-lines 1)
  (format t "~A ~S \"!~A\" ~S \"!~A\" ~S ~S ~A" "a1" x-axis "" y-axis "" p-list-name ")"))
    
(progn
  (acad-entsel-car "x-axis")
  (acad-entsel-car "y-axis")
  (acad-mnas-a1 "x-axis" "y-axis" "dt-mid-00-0")
  
  (acad-n-lines 3))


(layer-new *la*)

(layer-set "0")


