# Prompt formatting
setopt prompt_subst
export PS1='[%n@%m]%{$fg_bold[blue]%}%~%{$fg_no_bold[green]%}$(git_prompt_info)%{$fg_bold[black]%}:%{$reset_color%}'
