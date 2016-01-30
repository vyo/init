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

#  markdown  syntax
git clone https://github.com/tpope/vim-markdown

echo 'execute pathogen#infect()' >> "$HOME/.vim/vimrc"
echo 'set t_Co=256' >> "$HOME/.vim/vimrc"
echo 'set background=dark' >> "$HOME/.vim/vimrc"
echo 'syntax enable' >> "$HOME/.vim/vimrc"
echo 'colorscheme molokai' >> "$HOME/.vim/vimrc"
echo 'set expandtab' >> "$HOME/.vim/vimrc"
echo 'set shiftwidth=2' >> "$HOME/.vim/vimrc"
echo 'set softtabstop=2' >> "$HOME/.vim/vimrc"
echo 'set autoindent' >> "$HOME/.vim/vimrc"
echo 'filetype plugin indent on' >> "$HOME/.vim/vimrc"
echo 'au CursorHoldI * stopinsert' >> "$HOME/.vim/vimrc"
echo 'set ut=10000' >> "$HOME/.vim/vimrc"


