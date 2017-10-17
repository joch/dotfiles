#!/usr/bin/env bash

if [ ! -d $HOME/.emacs.d ]; then
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    success "$app installed, start Emacs to finish the installation."
else
    warning "$app already installed, skipping..."
fi

if [ ! -L $HOME/.emacs.d/private ]; then
    rm -rf $HOME/.emacs.d/private
    ln -s ~/.emacs.d/private $HOME/.dotfiles/apps.d/spacemacs/private
fi
