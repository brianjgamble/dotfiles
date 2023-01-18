. ~/bin/dotfiles/zsh/aliases
. ~/bin/dotfiles/zsh/config
. ~/bin/dotfiles/zsh/env
if [ -f ~/bin/dotfiles/zsh/local_env ]; then
  . ~/bin/dotfiles/zsh/local_env
fi

# asdf files
if [ -d "$HOME/.asdf" ]; then
  . $(brew --prefix asdf)/libexec/asdf.sh
fi

