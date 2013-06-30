#!/bin/sh

./configure --disable-darwin \
            --enable-gui=no \
            --without-x \
            --with-features=huge \
            --disable-gpm \
            --enable-cscope \
            --enable-multibyte \
            --disable-nls \
            --with-tlib=ncurses \
            --disable-netbeans
make
