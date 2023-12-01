#!/bin/bash

# setup autocompletion
if [ -f "/usr/share/bash-completion/completions/git" ]; then
    source /usr/share/bash-completion/completions/git

    __git_complete commit _git_commit
    __git_complete push _git_push
    __git_complete push! _git_push
    __git_complete PUSH _git_push
    __git_complete pull _git_pull
    __git_complete rebase _git_rebase
    __git_complete rebase? _git_rebase
    __git_complete rebase! _git_rebase
    __git_complete fetch _git_fetch
    __git_complete switch _git_switch
    __git_complete merge _git_merge
fi

# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
