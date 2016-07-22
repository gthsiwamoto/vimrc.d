#!/bin/bash

# Install the bundler
if [ -e ~/.vim/bundle ]; then
  rm -rf ~/.vim/bundle
fi
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# Install all bundles
vim -c "NeoBundleInstall" -c "q"
