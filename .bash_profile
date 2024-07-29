[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

. "$HOME/.cargo/env"
export LD_LIBRARY_PATH=/usr/local/lib:/usr/include/freetype2:$LD_LIBRARY_PATH
