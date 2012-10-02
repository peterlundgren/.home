setopt beep extendedglob nomatch notify

# For Home, End, and Delete
bindkey "\e[1~" beginning-of-line
bindkey "\e[3~" delete-char
bindkey "\e[4~" end-of-line
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

autoload -U colors
colors

# Named directories
# 'dir=/path/to/mydir' allows '~dir' to be used in place of '/path/to/mydir'
setopt AUTO_NAME_DIRS

# 'bar' becomes 'cd bar' if bar is not a command
setopt AUTO_CD
