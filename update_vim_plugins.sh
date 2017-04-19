#!/bin/sh

PLUGINS_DIR=~/bin/dotfiles/vim-plugins
VIM_DIR=~/bin/dotfiles/vim

cd $PLUGINS_DIR

for d in */ ; do
  echo "Updating git repo in ${d%?}"
  cd $d
  git pull
  cd ..
done
