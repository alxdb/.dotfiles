fpath+="$HOME/.zsh"
fpath+="$HOME/.zsh/prompt"

setopt autocd extendedglob nomatch notify
unsetopt beep

promptinit
prompt alxdb

setopt promptpercent
if [ -f ~/.aliases ]; then source ~/.aliases; fi

export DIRENV_LOG_FORMAT=
eval "$(direnv hook zsh)"
