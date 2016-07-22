#!/bin/bash

# Remove vimrc
if [ -e ~/.vimrc ]; then
  rm -f ~/.vimrc
fi

bash ~/.vimrc.d/install-neobundle.sh
ln -s ~/.vimrc.d/vimrc ~/.vimrc
