#!/bin/sh

ln -nfs ~/bin/dotfiles/zshrc ~/.zshrc
ln -nfs ~/bin/dotfiles/vim ~/.vim
ln -nfs ~/bin/dotfiles/vim/vimrc ~/.vimrc
ln -nfs ~/bin/dotfiles/vim/gvimrc ~/.gvimrc
ln -nfs ~/bin/dotfiles/vim/agignore ~/.agignore
ln -nfs ~/bin/dotfiles/gitconfig ~/.gitconfig
ln -nfs ~/bin/dotfiles/gitignore ~/.gitignore

mkdir -p ~/.config
ln -nfs ~/bin/dotfiles/fish ~/.config/fish
ln -nfs ~/bin/dotfiles/nvim ~/.config/nvim
