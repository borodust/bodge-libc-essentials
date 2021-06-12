(uiop:define-package :%libc.es (:use))
(uiop:define-package :bodge-libc-essentials-bindings~pristine (:use
                                                               :cl))
(common-lisp:in-package :bodge-libc-essentials-bindings~pristine)

(cffi:defctype %libc.es::size-t :unsigned-int)

(declaim (inline %libc.es::memcmp))

(cffi:defcfun ("memcmp" %libc.es::memcmp)
              :int
              (%libc.es::%%s1 (:pointer :void))
              (%libc.es::%%s2 (:pointer :void))
              (%libc.es::%%n %libc.es::size-t))

(declaim (inline %libc.es::memcpy))

(cffi:defcfun ("memcpy" %libc.es::memcpy)
              (:pointer :void)
              (%libc.es::%%dest (:pointer :void))
              (%libc.es::%%src (:pointer :void))
              (%libc.es::%%n %libc.es::size-t))

(declaim (inline %libc.es::strcmp))

(cffi:defcfun ("strcmp" %libc.es::strcmp)
              :int
              (%libc.es::%%s1 (:pointer :char))
              (%libc.es::%%s2 (:pointer :char)))

(declaim (inline %libc.es::strcpy))

(cffi:defcfun ("strcpy" %libc.es::strcpy)
              (:pointer :char)
              (%libc.es::%%dest (:pointer :char))
              (%libc.es::%%src (:pointer :char)))

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%libc.es::size-t :%libc.es)
  (export '%libc.es::strcmp :%libc.es)
  (export '%libc.es::memcmp :%libc.es)
  (export '%libc.es::memcpy :%libc.es)
  (export '%libc.es::strcpy :%libc.es))

