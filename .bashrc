# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias grep="grep --color=auto"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' # alias for git dotfiles
export PS1='[\u@\h \W]\$ ' # shell prompt
export EDITOR='vim'
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
. "$HOME/.cargo/env"
