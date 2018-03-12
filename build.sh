#!/bin/bash
# From BLFS: force system to regenerate src/fcobjshash.h
rm -f src/fcobjshash.h
./configure --prefix=/usr \
            --sysconfdir=/etc \
            --localstatedir=/var \
            --disable-docs \
            --docdir=/usr/share/doc/fontconfig-2.13.0 && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install
