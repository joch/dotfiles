#!/usr/bin/env bash

if [ ! -d $HOME/.emacs.d ]; then
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    success "$app installed, start Emacs to finish the installation."
else
    warning "$app already installed, skipping..."
fi
