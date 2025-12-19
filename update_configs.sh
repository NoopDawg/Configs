#!/bin/bash

rm -rf tmux
cp -r ~/.tmux/ tmux

cp ~/.tmux.conf tmux.conf

rm -rf vim
cp -r ~/.vim vim 
#cp ~/.vimrc . 

sudo ls "${HOME}/Library/Application Support/Cursor/User/"
sudo cp "${HOME}/Library/Application Support/Cursor/User/keybindings.json" cursor_keybindings.json
