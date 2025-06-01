#!/bin/bash

# Configure variables
export DOTFILES=$HOME/dotfiles/

# Configure shell
shell="$(which bash)";
export SHELL="$shell";

# Prefer US English and use UTF8
# export LANG="en_US.UTF-8";
# export LC_ALL="en_US.UTF-8";

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.config/.scripts/:$PATH;"
# Use code for editor related operations
export EDITOR="code --wait"
# Configure NVM
export NVM_DIR="$HOME/.nvm"
