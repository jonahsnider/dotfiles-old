# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Starship (https://github.com/starship/starship)
cargo install starship
# Configure Starship
ln -s ./starship/starship.toml ~/.config/starship.toml
