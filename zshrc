. ~/bin/dotfiles/zsh/aliases
. ~/bin/dotfiles/zsh/config
. ~/bin/dotfiles/zsh/env
if [ -f ~/bin/dotfiles/zsh/local_env ]; then
  . ~/bin/dotfiles/zsh/local_env
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
