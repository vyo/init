#!/bin/sh

mkdir "$HOME/.dircolors"
cd "$HOME/.dircolors"
git clone https://github.com/seebi/dircolors-solarized

echo 'export TERM=xterm-256color' >> "$HOME/.bashrc"
echo "eval `$HOME/.dircolors/dircolors-solarized/dircolors.256dark`" >> "$HOME/.bashrc"


