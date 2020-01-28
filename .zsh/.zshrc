# Aliases
# ef stands for edit file (more accurate than vi, but just as concise)
alias ef=$EDITOR
alias vf="vim -R" # view file
alias ec="emacsclient" # emacs client
alias pacS="sudo pacman -S"
# this allows vcs for any file in home, kept in a repo called ~/.dotfiles
alias dotf='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# git info styling
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats "%F{cyan}%r%f(%F{blue}%b%f)"

# make everything gruvy
/usr/share/vim/vimfiles/gruvbox_256palette.sh

# this must be at the end of the file
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern line)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
