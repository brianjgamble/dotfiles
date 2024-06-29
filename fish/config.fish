set PATH "/opt/homebrew/bin" $PATH

source /opt/homebrew/opt/asdf/libexec/asdf.fish
source /opt/homebrew/share/fish/vendor_completions.d/asdf.fish
source /opt/homebrew/share/fish/vendor_completions.d/brew.fish
source /opt/homebrew/share/fish/vendor_completions.d/flyctl.fish

if test -e ~/.config/fish/local.fish
  source ~/.config/fish/local.fish
end

# Use Neovim as "preferred editor"
set VISUAL nvim

# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim
