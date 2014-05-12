HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zhistory
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

# Search history with up and down keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
