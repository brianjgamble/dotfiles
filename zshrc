. ~/bin/dotfiles/zsh/aliases
. ~/bin/dotfiles/zsh/config
. ~/bin/dotfiles/zsh/env
if [ -f ~/bin/dotfiles/zsh/local_env ]; then
  . ~/bin/dotfiles/zsh/local_env
fi

# asdf files
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
