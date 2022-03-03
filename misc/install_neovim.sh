rm -r build/  # clear the CMake cache
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/local"
make install
export PATH="$HOME/neovim/bin:$PATH"