#!/bin/sh

./configure --disable-darwin \
            --with-features=huge \
            --disable-gpm \
            --enable-multibyte \
            --disable-nls \
            --enable-rubyinterp \
            --enable-gui=no \
            --without-x
make
