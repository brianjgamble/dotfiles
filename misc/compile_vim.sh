#!/bin/sh

./configure --enable-gui=no \
            --without-x \
            --with-features=normal \
            --disable-gpm \
            --disable-nls \
            --with-tlib=ncurses \
            --disable-netbeans \
            --enable-terminal \
            --with-tlib=ncurses

make
