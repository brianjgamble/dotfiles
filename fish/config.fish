# add asdf shims to path
if test -z $ASDF_DATA_DIR
  set _asdf_shims "$HOME/.asdf/shims"
else
  set _asdf_shims "$ASDF_DATA_DIR/shims"
end

### Update path

# add cabal/haskell to path
if test -e ~/.ghcup
  set -gx --prepend PATH "$HOME/.local/bin:$HOME/.ghcup/bin"
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

# set theme colors
set fish_color_autosuggestion 606C76
set fish_color_cancel -r
set fish_color_command D59E7B
set fish_color_comment 606C76
set fish_color_cwd green
set fish_color_cwd_root red
set fish_color_end 6D8FB7
set fish_color_error 60B9CE
set fish_color_escape 00a6b2
set fish_color_history_current --bold
set fish_color_host normal
set fish_color_host_remote yellow
set fish_color_match --background=brblue
set fish_color_normal normal
set fish_color_operator 00a6b2
set fish_color_param B5B3AD
set fish_color_quote 489D8F
set fish_color_redirection A296C0
set fish_color_search_match white --background=brblack
set fish_color_selection white --bold --background=brblack
set fish_color_status red
set fish_color_user brgreen
set fish_color_valid_path --underline
set fish_pager_color_completion normal
set fish_pager_color_description B3A06D yellow
set fish_pager_color_prefix white --bold --underline
set fish_pager_color_progress brwhite --background=cyan
set fish_pager_color_selected_background -r
