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
git clone https://github.com/bling/vim-airline

#   surround quoting/parenthesising
git clone https://github.com/tpope/vim-surround

#   nerdtree filesystem manager
git clone https://github.com/scrooloose/nerdtree

#   fugitive git wrapper
git clone https://github.com/tpope/vim-fugitive


echo 'execute pathogen#infect()\n' >> "$HOME/.vim/vimrc"
echo 'set t_Co=256\n' >> "$HOME/.vim/vimrc"
echo 'set background=dark\n' >> "$HOME/.vim/vimrc"
echo 'syntax enable\n' >> "$HOME/.vim/vimrc"
echo 'colorscheme molokai\n' >> "$HOME/.vim/vimrc"
echo 'set expandtab\n' >> "$HOME/.vim/vimrc"
echo 'set shiftwidth=2\n' >> "$HOME/.vim/vimrc"
echo 'set softtabstop=2\n' >> "$HOME/.vim/vimrc"
echo 'set autoindent\n' >> "$HOME/.vim/vimrc"
echo 'filetype plugin indent on\n' >> "$HOME/.vim/vimrc"
echo 'au CursorHoldI * stopinsert\n'
echo 'set ut=10000\n'

