#!/bin/sh

git clone git://github.com/stephenway/monokai.terminal.git

#   terminal colors 
cd monokai.terminal
open monokai.terminal

#   brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#   completions
brew install bash-completion
brew tap homebrew/completions

cat config.txt >> $HOME/.bash_profile



