umask 002

# Remove the Fish greeting
set fish_greeting

# Add local binaries to PATH
set -gx PATH ~/.local/bin $PATH

# Custom env
set -gx NODE_ENV development

# Update dotfiles in background
sh ~/.config/fish/dotfile_update.sh &

### Go
# Go installation root directory
set -gx GOROOT /usr/local/go
# Work directory
set -gx GOPATH $HOME/programming/go
# Add Go to PATH
set -gx PATH $GOPATH/bin $GOROOT/bin $PATH

### Rust
# Add Rust to PATH
set -gx PATH ~/.cargo/bin $PATH

### Java
# Add Gradle to PATH
set -gx PATH /opt/gradle/bin/ $PATH

### .NET
set -gx DOTNET_CLI_TELEMETRY_OPTOUT true

### GitHub CLI
set -gx PATH ~/.githubcli/bin $PATH

### Nim
set -gx PATH ~/.nimble/bin $PATH

### Deno
set -gx DENO_INSTALL ~/.deno
set -gx PATH $DENO_INSTALL/bin $PATH

### GPG
# Fix the "gpg: error building skey array: Inappropriate ioctl for device" error
# Solution from https://github.com/keybase/keybase-issues/issues/1712#issuecomment-141226705
# This gets piped to /dev/null because it will print environment variables for some reason
# If this doesn't fix the issue, try adding something like this to /etc/environment
export GPG_TTY=$tty > /dev/null

thefuck --alias | source

# https://github.com/starship/starship
starship init fish | source
