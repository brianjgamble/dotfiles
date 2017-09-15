#!/bin/sh

./configure --enable-multibyte \
            --with-lib=ncurses \
            --enable-cscope \ 
            --enable-terminal \
            --disable-nls \
            --enable-gui=no \
            --without-x \
            --disable-gpm \
            --disable-netbeans

make
