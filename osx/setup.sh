#!/bin/sh

git clone https://github.com/stephenway/monokai.terminal

#   terminal colors
cd monokai.terminal
open monokai.terminal

#   brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#   completions
brew install bash-completion@2
mkdir "$HOME/.bash_completions.d"

cat config.txt >> "$HOME/.bash_profile"

#   node
brew install node

#   ctags for vim tagbar
# brew install ctags
npm install -g jsctags

#   standardjs linter
npm install standardjs

#   ag (silver searcher, a grep/awk alternative)
brew install the_silver_searcher

#   ripgrep (an ag alternative)
brew install ripgrep

brew install exa

brew install bat

brew install coreutils

brew install git-delta

brew install thefuck

npm install --global jsonfui

brew install jq

brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags

brew install vercel-cli

brew install rectangle

brew install docker
cd "$HOME/.bash_completions.d"
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
cd -

# nginx alias
mkdir - "$HOME/.nginx/conf.d"
docker run --rm -v "$HOME/.nginx/conf.d:/tmp/conf" --entrypoint sh nginx -c '/etc/nginx/conf.d/default.conf > /tmp/conf/default.conf'
