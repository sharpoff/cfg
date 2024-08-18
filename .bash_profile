[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec sway
fi

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

. "$HOME/.cargo/env"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH
