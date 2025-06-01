#!/bin/bash

alias commit="git commit -m"
alias commit?="git commit --amend --no-edit"
alias pull="git pull"
alias push="git push"
alias push!="git push --force-with-lease"
alias PUSH="git push --force"
alias rebase="git rebase"
alias rebase?="git rebase --interactive"
alias rebase!="git rebase --force-rebase"
alias fetch="git fetch -tpP"
alias switch="git switch"
alias merge="git merge --no-ff --no-edit"
alias status="git status"

alias now="fetch && rebase origin/master && push!"

alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

##
# Functions
##

function repeat() {
    local count=$1
    local cmd=$2

    for ((i = 1; i <= $count; i++)); do
        echo "RUN $i / $count"
        eval $cmd
    done
}
export -f repeat
