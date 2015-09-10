#!/bin/sh

./configure --disable-darwin \
            --enable-gui=no \
            --without-x \
            --with-features=normal \
            --disable-gpm \
            --disable-nls \
            --with-tlib=ncurses \
            --disable-netbeans
make
