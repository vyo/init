#!/bin/sh

mkdir "$HOME/.dircolors"
cd "$HOME/.dircolors"
git clone https://github.com/seebi/dircolors-solarized
chmod +x "$HOME/.dircolors/dircolors-solarized/dircolors.256dark"

echo 'export TERM=xterm-256color' >> "$HOME/.bashrc"
echo 'eval `dircolors $HOME/.dircolors/dircolors-solarized/dircolors.256dark`' >> "$HOME/.bashrc"


