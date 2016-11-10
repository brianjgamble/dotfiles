#!/bin/sh

PLUGINS_DIR=~/bin/dotfiles/vim-plugins
VIM_DIR=~/bin/dotfiles/vim

# setup plugin directories
mkdir -p $VIM_DIR/autoload
mkdir -p $VIM_DIR/compiler
mkdir -p $VIM_DIR/ftdetect
mkdir -p $VIM_DIR/ftplugin
mkdir -p $VIM_DIR/indent
mkdir -p $VIM_DIR/plugin
mkdir -p $VIM_DIR/syntax

# ctrlp
CTRLP_DIR=$PLUGINS_DIR/ctrlp.vim

ln -nfs $CTRLP_DIR/autoload/ctrlp.vim $VIM_DIR/autoload/ctrlp.vim
ln -nfs $CTRLP_DIR/autoload/ctrlp $VIM_DIR/autoload/ctrlp
ln -nfs $CTRLP_DIR/plugin/ctrlp.vim $VIM_DIR/plugin/ctrlp.vim

# vim-elixir
VIM_ELIXIR_DIR=$PLUGINS_DIR/vim-elixir

ln -nfs $VIM_ELIXIR_DIR/compiler/exunit.vim $VIM_DIR/compiler/exunit.vim
ln -nfs $VIM_ELIXIR_DIR/ftdetect/elixir.vim $VIM_DIR/ftdetect/elixir.vim
ln -nfs $VIM_ELIXIR_DIR/ftplugin/eelixir.vim $VIM_DIR/ftplugin/eelixir.vim
ln -nfs $VIM_ELIXIR_DIR/ftplugin/elixir.vim $VIM_DIR/ftplugin/elixir.vim
ln -nfs $VIM_ELIXIR_DIR/indent/eelixir.vim $VIM_DIR/indent/eelixir.vim
ln -nfs $VIM_ELIXIR_DIR/indent/elixir.vim $VIM_DIR/indent/elixir.vim
ln -nfs $VIM_ELIXIR_DIR/syntax/eelixir.vim $VIM_DIR/syntax/eelixir.vim
ln -nfs $VIM_ELIXIR_DIR/syntax/elixir.vim $VIM_DIR/syntax/elixir.vim

# vim-rails
VIM_RAILS_DIR=$PLUGINS_DIR/vim-rails

ln -nfs $VIM_RAILS_DIR/autoload/rails.vim $VIM_DIR/autoload/rails.vim
ln -nfs $VIM_RAILS_DIR/compiler/rails.vim $VIM_DIR/compiler/rails.vim
ln -nfs $VIM_RAILS_DIR/plugin/rails.vim $VIM_DIR/plugin/rails.vim

# miscellaneous
ln -nfs $PLUGINS_DIR/c.vim $VIM_DIR/ftplugin/c.vim
ln -nfs $PLUGINS_DIR/make.vim $VIM_DIR/ftplugin/make.vim
ln -nfs $PLUGINS_DIR/ruby.vim $VIM_DIR/ftplugin/ruby.vim
