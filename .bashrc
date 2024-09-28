# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' # alias for git dotfiles
export PS1="\u@\h:\[\e[32m\]\w\[\e[0m\]\$ "
export EDITOR='vim'
export PATH="$PATH:usr/local/bin:$HOME/.cabal/bin:$HOME/.ghcup/bin:$(go env GOBIN):$(go env GOPATH)/bin"
