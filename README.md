# `dotfiles`

Shared configuration files for my computers

## Usage

Run the `init.sh` file to setup symlinks that point to the config files stored in this repository.

### General

```sh
sh ./init.sh
```

### Rust

Rust is used for [Starship](https://github.com/starship/starship) among other tools.

Install Rust and other related tools with this command:

```sh
sh ./rust.sh
```

### Node.js

Install the latest version of Node.js 12 for Debian based OSs with this command:

```sh
# Requires root
sh ./nodejs.sh
```

Other installation instructions are [here](https://nodejs.org/en/download/package-manager/).
