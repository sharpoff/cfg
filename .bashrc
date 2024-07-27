# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' # alias for git dotfiles
export PS1="\u@\h:\[\e[32m\]\w\[\e[0m\]\$ "
export EDITOR='vim'
