set FLYCTL "/opt/homebrew/share/fish/vendor_completions.d/flyctl.fish"

# add homebrew to path
set PATH "/opt/homebrew/bin" $PATH

# add asdf shims to path
if test -z $ASDF_DATA_DIR
  set _asdf_shims "$HOME/.asdf/shims"
else
  set _asdf_shims "$ASDF_DATA_DIR/shims"
end

set -gx --prepend PATH $_asdf_shims

set --erase _asdf_shims

source /opt/homebrew/share/fish/vendor_completions.d/asdf.fish
source /opt/homebrew/share/fish/vendor_completions.d/brew.fish

if test -e $FLYCTL
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
