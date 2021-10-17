#!/bin/bash

set -ou pipefail


BASE_DIR=$(cd $(dirname $0) && pwd)

mkdir -p $HOME/.config
stow -v -t $HOME/.config config

mkdir -p $HOME/.local/bin
stow -v -t $HOME/.local/bin scripts

if [[ ! -d "$HOME/.zsh/pure" ]]; then
  # install pure theme
  mkdir -p "$HOME/.zsh"
  git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi



[ ! -e "$HOME/.zprofile" ]  && ln -s $BASE_DIR/zprofile $HOME/.zprofile
[ ! -e "$HOME/.zshenv" ]    && ln -s $BASE_DIR/zshenv $HOME/.zshenv
[ ! -e "$HOME/.zshrc" ]     && ln -s $BASE_DIR/zshrc $HOME/.zshrc

[ ! -e "$HOME/.aliases" ]   && ln -s $BASE_DIR/aliases $HOME/.aliases
[ ! -e "$HOME/.gitconfig" ] && ln -s $BASE_DIR/gitconfig $HOME/.gitconfig


