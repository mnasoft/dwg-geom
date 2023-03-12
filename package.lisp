;;;; package.lisp

(defpackage :dwg-geom
  (:use #:cl)
  (:export geom
	   
	   point
	   point-x
	   point-y
	   point-z
	   
	   line
	   line-start
	   line-end
	   
	   fl
	   fl-dn
	   fl-pn
	   fl-material

	   draw
	   ))




;;;; (declaim (optimize (compilation-speed 0) (debug 3) (safety 0) (space 0) (speed 0)))
