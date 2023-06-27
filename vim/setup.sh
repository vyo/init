#!/bin/sh

mkdir "$HOME/.vim"
touch "$HOME/.vim/vimrc"

CURRENT=$(pwd)

#   pathogen
mkdir -p "$HOME/.vim/autoload" "$HOME/.vim/bundle" && \
curl -LSso "$HOME/.vim/autoload/pathogen.vim" https://tpo.pe/pathogen.vim

cd "$HOME/.vim/bundle"

#   molokai color scheme
git clone https://github.com/tomasr/molokai

#   Dockerfile syntax highlighting
git clone https://github.com/ekalinin/Dockerfile.vim.git

#   airline status bar
git clone https://github.com/vim-airline/vim-airline

#   airline themes
git clone https://github.com/vim-airline/vim-airline-themes

#   surround quoting/parenthesising
git clone https://github.com/tpope/vim-surround

#   nerdtree filesystem manager
git clone https://github.com/scrooloose/nerdtree

#   fugitive git wrapper
git clone https://github.com/tpope/vim-fugitive

#   markdown  syntax
git clone https://github.com/tpope/vim-markdown

#   gradle syntax
git clone https://github.com/tfnico/vim-gradle

#   sneak movement extension
git clone https://github.com/justinmk/vim-sneak

#   commenting out/in
git clone https://github.com/tpope/vim-commentary.git

#   swift syntax
git clone https://github.com/keith/swift.vim

#   go development
git clone https://github.com/fatih/vim-go

#   tagbar
git clone https://github.com/majutsushi/tagbar

#   async lint engine
git clone https://github.com/w0rp/ale

#   kite python code hints
git clone https://github.com/kiteco/vim-plugin

#   kotlin syntax highlighting
git clone https://github.com/udalov/kotlin-vim

#   dot repeat for complex commands/plugins
git clone https://github.com/tpope/vim-repeat.git

#   uml description file syntax highlighting
git clone https://github.com/aklt/plantuml-syntax

#   uml in-place ascii rendering (sequence and basic components only)
git clone https://github.com/scrooloose/vim-slumlord

cd $CURRENT
cat config.txt >> $HOME/.vim/vimrc

mkdir -p $HOME/.vim/autoload/airline/extensions
cp ale.vim $HOME/.vim/autoload/airline/extensions/

# dein plugin manager
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein-setup.sh
bash dein-setup.sh "$HOME/.dein"
rm dein-setup.sh
vim '+call dein#install() +q!'

