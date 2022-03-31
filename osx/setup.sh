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

#   node
brew install node

#   ctags for vim tagbar
brew install ctags
npm install -g jsctags

#   standardjs linter
npm install standardjs

#   ag (silver searcher, a grep/awk alternative)
brew install the_silver_searcher

#   ripgrep (an ag alternative)
brew install ripgrep

brew install exa

brew install bat

brew install thefuck

npm install --global jsonfui

brew install jq

