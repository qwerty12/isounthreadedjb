#!/bin/sh
command -v glibtoolize >/dev/null 2>&1 && glibtoolize || libtoolize
aclocal
autoconf
autoheader
automake -a -c
autoreconf -i
./configure --disable-dependency-tracking
