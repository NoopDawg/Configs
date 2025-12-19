#!/bin/bash

#tmux
rm -rf ~/.tmux
cp -r tmux ~/.tmux
cp tmux.conf ~/.tmux.conf

cp -r vim ~/.vim

sudo cp cursor_keybindings.json "$HOME/Library/Application Support/Cursor/User/keybindings.json"
