#!/bin/sh

cd "$HOME"

mkdir "$HOME/.dircolors"
cd "$HOME/.dircolors"
git clone https://github.com/seebi/dircolors-solarized
chmod +x "$HOME/.dircolors/dircolors-solarized/dircolors.256dark"

cat dircolors.txt >> $HOME/.bashrc

