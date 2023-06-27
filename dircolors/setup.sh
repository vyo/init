#!/bin/sh

CURRENT="$(pwd)"

cd "$HOME"

mkdir "$HOME/.dircolors"
cd "$HOME/.dircolors"
git clone https://github.com/seebi/dircolors-solarized
chmod +x "$HOME/.dircolors/dircolors-solarized/dircolors.256dark"

cd $CURRENT
cat config.txt >> $HOME/.bashrc

