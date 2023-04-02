#!/bin/bash

TSTAMP=$(date +"%Y%m%d-%H%M%S")

chmod a+x ai
sudo cp ai /usr/bin/ai

curl -sfLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp -r ai-plugin ~/.vim/

cp ~/.vimrc ~/.vimrc-${TSTAMP}
cat << EOF > ~/.vimrc
call plug#begin()

Plug '~/.vim/ai-plugin'

call plug#end()
EOF

