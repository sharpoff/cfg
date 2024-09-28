[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH
