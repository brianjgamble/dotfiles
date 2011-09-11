. ~/bin/dotfiles/zsh/aliases
. ~/bin/dotfiles/zsh/config
. ~/bin/dotfiles/zsh/env

unsetopt correct_all

# load rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
