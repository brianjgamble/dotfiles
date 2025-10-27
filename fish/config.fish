# add asdf shims to path
if test -z $ASDF_DATA_DIR
  set _asdf_shims "$HOME/.asdf/shims"
else
  set _asdf_shims "$ASDF_DATA_DIR/shims"
end

### Update path

# add haskell to path
if test -e ~/.ghcup
  set -gx --prepend PATH "$HOME/.cabal/bin:$HOME/.ghcup/bin"
end

set -gx --prepend PATH "$HOME/bin:$_asdf_shims:/opt/homebrew/bin"

set --erase _asdf_shims

set BREW_PATH (brew --prefix)

source $BREW_PATH/share/fish/vendor_completions.d/asdf.fish
source $BREW_PATH/share/fish/vendor_completions.d/brew.fish

set FLYCTL $BREW_PATH/share/fish/vendor_completions.d/flyctl.fish
if test -e $FLYCTL
  source $BREW_PATH/share/fish/vendor_completions.d/fly.fish
  source $FLYCTL
end

if test -e ~/.config/fish/local.fish
  source ~/.config/fish/local.fish
end

# Use Neovim as "preferred editor"
set VISUAL nvim

# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim
