# dotfiles

Configured with (as of 2022-12-27) a little bit of ratpoison and tmux.

Ratpoison gets exec'd through bashrc if tty = tty1.

Tmux and ratpoison have had their default bindings replaced with something I find suiting.

When ratpoison starts up, it runs xterm with tmux-init located in .local/bin/ which should be added to your PATH from the bashrc.

Tmux-init is a little script I put together that checks whether or not a tmux session exists; if one does tmux attaches to it, otherwise, a new session gets created with a "default layout".

There's also a little script called battery which is on the PATH that I use to check the laptop's battery status.
