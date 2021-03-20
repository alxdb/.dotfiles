HISTFILE=~/.local/share/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000

fpath+="$HOME/.zsh"
fpath+="$HOME/.zsh/prompt"

setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e

autoload -Uz compinit promptinit
compinit
promptinit

prompt alxdb
setopt promptpercent

if [ -f ~/.aliases ]; then source ~/.aliases; fi

eval "$(direnv hook zsh)"
