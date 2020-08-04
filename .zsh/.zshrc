# Aliases

# set editor for emacs term to... emacs!
if [ $TERM = eterm-color ]; then
  export EDITOR=emacsclient
fi

# ef stands for edit file (more accurate than vi, but just as concise)
alias ef=$EDITOR
alias vf="vim -R" # view file
alias ec="emacsclient" # emacs client
alias pacS="sudo pacman -S"
alias pacSu="sudo pacman -Syu"
# this allows vcs for any file in home, kept in a repo called ~/.dotfiles
alias dotf='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# ignore these top level folders
IGNORED_HOME_FOLDERS=("Bitwig\ Studio" "FiraxisLive" "ToguAudioLine")
alias ls="command ls $(echo -I${^IGNORED_HOME_FOLDERS}) --color=auto -v"
alias ll='ls -l -h'
# docker-machine alias
alias dm='eval $(docker-machine env)'
# ssh ignore alacritty
alias ssh='TERM=xterm-256color ssh'

# git info styling
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{cyan}%r%f(%F{blue}%b%f)%F{yellow}%u%f%F{green}%c%f"

# make everything gruvy, but not in emacs (spews junk)
if [ ! $TERM = eterm-color ]; then
  /usr/share/vim/vimfiles/gruvbox_256palette.sh
fi

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
