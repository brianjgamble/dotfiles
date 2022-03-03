rm -r build/  # clear the CMake cache
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/local -DCMAKE_BUILD_TYPE=Release"
make install
export PATH="$HOME/neovim/bin:$PATH"
