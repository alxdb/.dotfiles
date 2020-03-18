# Aliases
# ef stands for edit file (more accurate than vi, but just as concise)
alias ef=$EDITOR
alias vf="vim -R" # view file
alias ec="emacsclient" # emacs client
alias pacS="sudo pacman -S"
# this allows vcs for any file in home, kept in a repo called ~/.dotfiles
alias dotf='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# screw you bitwig... (I love you really)
alias ls='command ls -IBitwig\ Studio --color=auto -v'
alias ll='command ls -IBitwig\ Studio -l --color=auto -v'
# docker-machine alias
alias dm='eval $(docker-machine env)'

# git info styling
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{cyan}%r%f(%F{blue}%b%f)%F{yellow}%u%f%F{green}%c%f"

# make everything gruvy
/usr/share/vim/vimfiles/gruvbox_256palette.sh

# this must be at the end of the file
# syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern line)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=blue,bold'
export HISTORY_SUBSTRING_SEARCH_FUZZY=1
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
