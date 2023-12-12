switch (uname -m)
  case arm64
    set BREW_PREFIX /opt/homebrew
  case '*'
    set BREW_PREFIX /usr/local
end
set PATH "$BREW_PREFIX/bin" $PATH

source /opt/homebrew/opt/asdf/libexec/asdf.fish

if test -e ~/.config/fish/local.fish
  source ~/.config/fish/local.fish
end

# Use Neovim as "preferred editor"
set VISUAL nvim

# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/bgamble/.ghcup/bin $PATH # ghcup-env