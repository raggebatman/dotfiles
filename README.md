# dotfiles

This repo has some configs and stuff for a somewhat minimal Arch install.

There's a file containing a list of packages I'd like to use.

You could install them like so:

```bash
sudo pacman -S $(awk '{print $1}' packages.txt)
```
