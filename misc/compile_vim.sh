#!/bin/sh

./configure --prefix=$HOME/local \
            --with-local-dir=$HOME/local \
            --enable-multibyte \
            --with-lib=ncurses \
            --enable-cscope \ 
            --enable-terminal \
            --disable-nls \
            --enable-gui=no \
            --without-x \
            --disable-gpm \
            --disable-netbeans

make
