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
# AdoptOpenJDK
set -gx PATH ~/.java/bin $PATH
set -gx JDK_HOME ~/.java
set -gx JAVA_HOME ~/.java

### .NET
set -gx DOTNET_CLI_TELEMETRY_OPTOUT true

### Nim
set -gx PATH ~/.nimble/bin $PATH

### Deno
set -gx DENO_INSTALL ~/.deno
set -gx PATH $DENO_INSTALL/bin $PATH

### npm
npm config set prefix '~/.npm-global'
set -gx PATH ~/.npm-global/bin $PATH

### GPG
# Fix the "gpg: error building skey array: Inappropriate ioctl for device" error
# Solution from https://github.com/keybase/keybase-issues/issues/1712#issuecomment-141226705
export GPG_TTY=(tty)

### Python
# Use Python 3.8 by default
alias python=(which python3.8)
# Poetry
set -gx PATH ~/.poetry/bin $PATH

# https://github.com/starship/starship
starship init fish | source
