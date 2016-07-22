#!/bin/bash

# Remove vimrc
if [ -e ~/.vimrc ]; then
  rm -f ~/.vimrc
fi

bash install-neobundle.sh
ln -s vimrc ~/.vimrc
