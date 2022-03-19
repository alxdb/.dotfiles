# Path configuration for interactive shells
fpath+='/usr/local/share/zsh-completions'
fpath+='/usr/local/share/zsh/site-functions'
fpath+="$HOME/.zsh"
fpath+="$HOME/.zsh/prompt"

# Zsh options
setopt HIST_IGNORE_DUPS

# Env vars for interactive shells
export WORDCHARS=$(echo $WORDCHARS | sed 's/\///')
export BAT_THEME=Nord

# Zsh autoloads
autoload -Uz compinit promptinit
compinit
promptinit

# Prompt
prompt alxdb

# Aliases
alias vi=nvim
alias vim=nvim
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ll -a"
alias doco=docker-compose

# Misc fixes
bindkey -M viins "^?" backward-delete-char

# Use nvr if inside vim
if [[ -n $VIM ]]; then
	alias vi=nvr
fi
if [[ -n $EMACS_VTERM_PATH ]]; then
	alias vi="emacsclient -n"
fi

# Always use meta keys for movement
bindkey "ƒ" forward-word
bindkey "∫" backward-word
bindkey "∂" kill-word

# Direnv hook
eval "$(direnv hook zsh)"

# Extensions
source '/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh'
source '/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
source '/usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh'
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

