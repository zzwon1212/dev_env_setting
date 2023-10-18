#!/bin/bash

# Install gVim
echo "Installing gVim..."
sudo apt install -y vim-gnome

# Install jellybeans colorscheme
echo "Installing jellybeans colorscheme..."
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim

# Make .vimrc
echo -e '
" clipboard settings : Copy/Paste/Cut
if has('unnamedplus')
	set clipboard=unnamed,unnamedplus
endif

set nu
set ai cindent ts=4 sw=4 hls
" option to read files encoded by euc-kr
set fencs=ucs-bom,utf-8,japan,korea,latin-1
colorscheme jellybeans
' >> .vimrc

# Verify installed versions
vim --version | grep clipboard