#!/bin/bash

# Remove vimrc
if [ -e ~/.vimrc ]; then
  rm -f ~/.vimrc
fi

source install-neobundle.sh
ln -s ~/.vimrc.d/vimrc ~/.vimrc
