#!/usr/bin/env bash

# Stop on any error, print all commands
set -ev
# Copy standard dotfiles from this repo into the user's environment

## Setup
### Determine where the dot files are in this repository
DOTFILES_PATH=$(dirname $0)/..

## Copy Over Standard Environment Files
cp -fp $DOTFILES_PATH/home/.gitignore_global ~
cp -fp $DOTFILES_PATH/home/.vimrc ~
cp -fp $DOTFILES_PATH/home/.zshrc ~

mkdir -p ~/.vagrant.d
cp -fp $DOTFILES_PATH/home/.vagrant.d/Vagrantfile ~/.vagrant.d/

## Execution Path
### Useful command-line utilities (if present)
mkdir -p ~/bin
cp -fp $DOTFILES_PATH/home/bin/* ~/bin || true
