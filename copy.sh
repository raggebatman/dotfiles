#!/bin/bash

repo="$HOME/github/dotfiles"

echo "copying to $repo"

echo 'copying bashrc' && cp ~/.bashrc $repo
echo 'copying tmux config' && cp ~/.tmux.conf $repo
echo 'copying vim config' && cp ~/.vimrc $repo

echo 'attempting to create directory for elinks' && mkdir "$repo"/.elinks
echo 'copying elinks bookmarks' && cp ~/.elinks/bookmarks "$repo"/.elinks 
echo 'copying elinks config' && cp ~/.elinks/elinks.conf "$repo"/.elinks

echo 'attempting to create directory for binaries' && mkdir -p "$repo"/.local/bin
echo 'copying battery script' && cp ~/.local/bin/battery "$repo"/.local/bin
echo 'copying tmux script' && cp ~/.local/bin/tmux-fresh "$repo"/.local/bin

echo 'done'
