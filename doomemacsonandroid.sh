#!/usr/bin/env sh

# Installing the pre-requisites for DooM
pkg install git gh ripgrep fd llvm emacs


termux-setup-storage
ln -s /storage/shared/dotfiles/config /data/data/org.gnu.emacs/.config
ln -s /path/to/storage/dotfiles/config /data/data/com.termux/.config

# the following is just for ease of navigation back and forth
ln -s /data/data/org.gnu.emacs /data/data/com.termux/emacs
ln -s /data/data/com.termux /data/data/org.gnu.emacs/termux

git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
cp .config/emacs/.local/etc/@/init.29.elc .config/emacs/.local/etc/@/init.30.elc
