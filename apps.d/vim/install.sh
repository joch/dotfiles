#!/usr/bin/env bash
set -e

if [ ! -d "$HOME/.vim" ]; then
    ln -s "`pwd`/vimrc.after" $HOME/.vimrc.after
    success "$app installed"
else
    warning "$app already installed, skipping..."
fi

