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
  # Attach to tmux or make a fresh one if it's not there
  tmux has-session 2>/dev/null

  if [[ $? != 0 ]]; then
    tmux-fresh
  else
    tmux attach
  fi
fi
