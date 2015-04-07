# get the name of the branch we are on
function git_prompt_info() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo " ${ref#refs/heads/}"
}

alias gc="git commit -v"
alias gd="git diff"
alias gdw="git diff --word-diff=color"
alias gl="git log --decorate --graph --oneline"
alias gla="git log --decorate --graph --oneline --all"
alias glp="git log --decorate -p"
alias gls="git log --decorate --stat"
alias gs="git status"
alias gituncommit="git reset --soft HEAD~1"
function gitinit() {
    git init
    export GIT_AUTHOR_DATE="1970-01-01T00:00:00+0000"
    export GIT_COMMITTER_DATE="1970-01-01T00:00:00+0000"
    git commit --allow-empty -m 'Initial commit'
    unset GIT_AUTHOR_DATE
    unset GIT_COMMITTER_DATE
}
