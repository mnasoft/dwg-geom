;;;; class.lisp

(in-package #:dwg-geom)

(defclass geom () ())

(defclass point ()
  ((x :accessor point-x :initarg :x :initform 0.0)
   (y :accessor point-y :initarg :y :initform 0.0)
   (z :accessor point-z :initarg :z :initform 0.0)))

(defclass line (geom)
  ((start :accessor line-start :initarg :start :initform (make-instance 'point))
   (end   :accessor line-end   :initarg :end   :initform (make-instance 'point))))

(defclass fl (geom)
  ((dn       :accessor fl-dn       :initarg :dn       :initform 400)
   (pn       :accessor fl-pn       :initarg :pn       :initform 1.0)
   (material :accessor fl-material :initarg :material :initform "12Х18Н10Т")))
