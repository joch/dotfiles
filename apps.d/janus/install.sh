#!/usr/bin/env bash
set -e

if [ ! -d "$HOME/.janus" ]; then
    curl -Lo- https://bit.ly/janus-bootstrap | bash
    success "$app installed"
else
    warning "$app already installed, skipping..."
fi

