#!/bin/bash

_dir="$(readlink -f ${0%/*})"
_dir="${_dir##"$HOME/"}"

ln -sfT "$_dir"/bin/ ~/.bin
ln -sf "$_dir"/bash_profile ~/.bash_profile
ln -sf "$_dir"/bashrc ~/.bashrc
ln -sf "$_dir"/gitconfig ~/.gitconfig
ln -sf "$_dir"/makepkg.conf ~/.makepkg.conf
ln -sf "$_dir"/screenrc ~/.screenrc
ln -sf "$_dir"/vimrc ~/.vimrc
