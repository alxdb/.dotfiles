path=('/usr/local/opt/coreutils/libexec/gnubin' $path)
path=('/usr/local/opt/python@3.9/libexec/bin' $path)

fpath+='/usr/local/share/zsh-completions'
fpath+="$HOME/.zsh"

autoload -Uz compinit
compinit

bindkey -M viins "^?" backward-delete-char

alias vim=nvim
alias vi=nvim
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ll -a"

autoload -U promptinit
promptinit
prompt pure

source '/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh'
source '/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
source '/usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh'
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

