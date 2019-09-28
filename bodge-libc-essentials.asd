(asdf:defsystem :bodge-libc-essentials
  :description "Common Lisp bindings to most essential part of libc"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw)
  :components ((:file "bodge-libc-essentials")))
