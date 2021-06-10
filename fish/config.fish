switch (uname -m)
  case arm64
    set BREW_PREFIX /opt/homebrew
  case '*'
    set BREW_PREFIX /usr/local
end
set PATH "$BREW_PREFIX/bin" $PATH

source (brew --prefix asdf)/asdf.fish

if test -e ~/.config/fish/local.fish
  source ~/.config/fish/local.fish
end
