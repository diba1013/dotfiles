# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	    source "$HOME/.bashrc"
    fi

    # Run dotfiles, but ignore file starting with dots
    for DOTFILE in `find $HOME/.dotfiles -maxdepth 1 -type f -not -name '.*'`
    do

        if [ -f "$DOTFILE" ]; then
            source "$DOTFILE";
        fi
    done
fi
