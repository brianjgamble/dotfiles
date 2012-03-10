#!/bin/sh

./configure --disable-darwin \
            --with-features=huge \
            --with-tlib=ncurses \
            --enable-multibyte \
            --with-macarchs=x86_64 \
            --enable-rubyinterp \
            --enable-tclinterp
make
