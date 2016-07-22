#!/bin/bash

# Remove vimrc
if [ -f ~/.vimrc -o -L ~/.vimrc ]; then
  rm -f ~/.vimrc
fi

source install-neobundle.sh
ln -s ~/.vimrc.d/vimrc ~/.vimrc
