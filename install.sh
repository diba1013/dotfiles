#!/bin/bash

DIRECTORY=$HOME/dotfiles

DOTFILES_CONFIG="$DIRECTORY/dotfiles/config"

# Create backup directory
BACKUP="$DIRECTORY/backup/"
if [ ! -d $BACKUP ]; then
    mkdir $BACKUP
fi

if [ -d "$HOME/bin" ]; then
    echo "Saving bin content"
    mv "$HOME/bin/*" "$DIRECTORY/bin/"
    rm -rf "$HOME/bin"
fi
ln -s "$DIRECTORY/bin" "$HOME/bin"

if [ -f "$HOME/.bash_profile" ]; then
    echo "Saving .bash_profile, please move all adjustments to local dotfiles"
    mv "$HOME/.bash_profile" $BACKUP
fi
ln -s "$DIRECTORY/.bash_profile" "$HOME/"

if [ -f "$HOME/.inputrc" ]; then
    echo "Saving .inputrc, please move all adjustments to local dotfiles"
    mv "$HOME/.inputrc" $BACKUP
fi
ln -s "$DIRECTORY/.inputrc" "$HOME/"
