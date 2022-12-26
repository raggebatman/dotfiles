setxkbmap -layout "se"

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec ratpoison
