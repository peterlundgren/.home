alias rezshrc="source ~/.zshrc"

# 'cd ..' if no arguments are provided. Behave like . or sorce otherwise.
#
# The . or source builtin requires at least 1 argument. Overload the no
# argument version to 'cd ..' instead.
dot() {
    file=$1
    if [ $# -gt 0 ]
    then
        shift
        source $file
    else
        cd ..
    fi
}
alias .=dot
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."

alias ls="ls --color=auto -F"
alias ll="ls --color=auto -lF"
alias la="ls --color=auto -aF"
alias lla="ls --color=auto -alF"
