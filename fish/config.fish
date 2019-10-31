umask 002

# Remove the Fish greeting
set fish_greeting

# Add local binaries to PATH
set -gx PATH ~/.local/bin $PATH

# Custom env
set -gx NODE_ENV development

# Update dotfiles in background
sh ~/.config/fish/dotfile_update.sh &

# https://github.com/starship/starship
starship init fish | source

### Go
# Go installation root directory
set -gx GOROOT /usr/local/go
# Work directory
set -gx GOPATH $HOME/Programming/go
# Add Go to PATH
set -gx PATH $GOPATH/bin $GOROOT/bin $PATH

### Rust
# Add Rust to PATH
set -gx PATH ~/.cargo/bin $PATH

### Java
# Add Gradle to PATH
set -gx PATH /opt/gradle/bin/ $PATH
