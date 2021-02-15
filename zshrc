# Path configuration for interactive shells
path=('/usr/local/opt/coreutils/libexec/gnubin' $path)
path=('/usr/local/opt/python@3.9/libexec/bin' $path)

fpath+='/usr/local/share/zsh-completions'
fpath+='/usr/local/share/zsh/site-functions'
fpath+="$HOME/.zsh"
fpath+="$HOME/.zsh/prompt"

# env vars for interactive shells
export WORDCHARS=$(echo $WORDCHARS | sed 's/\///')
export BAT_THEME=Nord

# zsh autoloads
autoload -Uz compinit promptinit
compinit
promptinit

# prompt
prompt alxdb

# aliases
alias vim=nvim
alias vi=nvim
alias ed=nvim
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ll -a"
alias doco=docker-compose

# misc fixes
bindkey -M viins "^?" backward-delete-char

# extensions
source '/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh'
source '/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
source '/usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh'
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

