umask 002

# Remove the Fish greeting
set fish_greeting

# Add local binaries to PATH
set -gx PATH ~/.local/bin $PATH

# Custom env
set -gx NODE_ENV development

# Add Cargo and Rust tools to path
set -gx PATH ~/.cargo/bin $PATH

# Update dotfiles in background
sh ~/.config/fish/dotfile_update.sh &

# https://github.com/starship/starship
starship init fish | source
