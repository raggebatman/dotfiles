#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '

# Refresh the password prompt timeout on sudo
alias sudo='sudo -v; sudo '

# Modify PATH
export PATH="$PATH:~/.local/bin"

# Check if we're logging in from tty1
if [[ "$(tty)" == "/dev/tty1" ]]; then

  startx

  #tmux has-session 2>/dev/null

  #if [[ $? != 0 ]]; then
  #  ratpoison -c "exec xterm -e 'tmux-fresh; bash'"
  #else
  #  ratpoison -c "exec xterm -e 'tmux attach; bash'"
  #fi
fi
