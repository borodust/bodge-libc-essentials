(claw:defwrapper (:bodge-libc-essentials/wrapper
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
                  (:exclude-definitions "^_\\w*")
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                            ((:and :x86 :linux) "i686-pc-linux-gnu")
                            ((:and :ppc64 :linux :big-endian) "powerpc64-pc-linux-gnu")
                            ((:and :ppc64 :linux :little-endian) "powerpc64le-pc-linux-gnu")
                            ((:and :x86-64 :windows) "x86_64-pc-windows-gnu")
                            ((:and :x86 :windows) "i686-pc-windows-gnu")
                            ((:and :x86-64 :darwin) "x86_64-apple-darwin-gnu")
                            ((:and :x86 :darwin) "i686-apple-darwin-gnu"))
                  (:persistent :bodge-libc-essentials-bindings))
  :in-package :%libc.es)
