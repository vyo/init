#!/bin/sh

mkdir "$HOME/.vim"
touch "$HOME/.vim/vimrc"

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

cat vim.txt >> $HOME/.vim/vimrc

