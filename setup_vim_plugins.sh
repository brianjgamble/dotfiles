#!/bin/sh

PLUGINS_DIR=~/bin/dotfiles/vim-plugins
VIM_DIR=~/bin/dotfiles/vim

# retrieve vim plugins sources
mkdir -p $PLUGINS_DIR
cd $PLUGINS_DIR

if [ ! -d "ctrlp.vim" ]; then
  git clone https://github.com/ctrlpvim/ctrlp.vim.git
fi

if [ ! -d "vim-elixir" ]; then
  git clone https://github.com/elixir-lang/vim-elixir.git
fi

if [ ! -d "vim-rails" ]; then
  git clone https://github.com/tpope/vim-rails.git 
fi

if [ ! -d "html5.vim" ]; then
  git clone https://github.com/othree/html5.vim
fi

if [ ! -d "rspec.vim" ]; then
  git clone https://github.com/keith/rspec.vim
fi

cd ..

# setup vim plugin directories
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

ln -nfs $VIM_ELIXIR_DIR/autoload/elixir $VIM_DIR/autoload/elixir
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

# html5
HTML5_DIR=$PLUGINS_DIR/html5.vim
ln -nfs $HTML5_DIR/autoload/htmlcomplete.vim $VIM_DIR/autoload/htmlcomplete.vim
ln -nfs $HTML5_DIR/autoload/xml $VIM_DIR/autoload/xml
ln -nfs $HTML5_DIR/ftplugin/html.vim $VIM_DIR/ftplugin/html.vim
ln -nfs $HTML5_DIR/indent/html.vim $VIM_DIR/indent/html.vim
ln -nfs $HTML5_DIR/syntax/html.vim $VIM_DIR/syntax/html.vim
ln -nfs $HTML5_DIR/syntax/html $VIM_DIR/syntax/html
ln -nfs $HTML5_DIR/syntax/javascript $VIM_DIR/syntax/javascript

# rspec.vim
RSPEC_VIM_DIR=$PLUGINS_DIR/rspec.vim

ln -nfs $RSPEC_VIM_DIR/after/ftdetect/rspec.vim $VIM_DIR/ftdetect/rspec.vim
ln -nfs $RSPEC_VIM_DIR/after/syntax/rspec.vim $VIM_DIR/syntax/rspec.vim
