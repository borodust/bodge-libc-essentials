(uiop:define-package :bodge-libc-essentials
  (:use))

(uiop:define-package :%libc.es
  (:use))


(claw:defwrapper (bodge-libc-essentials::bodge-libc-essentials
                  (:headers "assert.h"
                            "ctype.h"
                            "errno.h"
                            "limits.h"
                            "locale.h"
                            "math.h"
                            "setjmp.h"
                            "signal.h"
                            "stdarg.h"
                            "stddef.h"
                            "stdio.h"
                            "stdlib.h"
                            "string.h"
                            "time.h")
                  (:include-definitions "memcpy"
                                        "memcmp"
                                        "strcmp"
                                        "strcpy")
                  (:exclude-definitions "^_\\w*"))
  :in-package :%libc.es)
