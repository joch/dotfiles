#!/usr/bin/env bash
set -e

if [ ! -d "$HOME/.vim/janus" ]; then
    curl -Lo- https://bit.ly/janus-bootstrap | bash
    success "$app installed"

    info "Installing vim-gitgutter"
    mkdir -p ~/.janus
    git clone git://github.com/airblade/vim-gitgutter.git ~/.janus/vim-gitgutter
    success "installed"

else
    warning "$app already installed, skipping..."
fi

