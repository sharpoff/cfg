[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

. "$HOME/.cargo/env"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH
