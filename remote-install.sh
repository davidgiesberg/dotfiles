#!/usr/bin/env bash

git clone https://github.com/davidgiesberg/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./bootstrap

echo "Available packages to stow:"
for i in $(ls -d */); do echo ${i%%/}; done
