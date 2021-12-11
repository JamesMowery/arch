#!/bin/bash

echo "dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
echo ".dotfiles" >> $HOME/.gitignore
git clone --bare https://github.com/JamesMowery/dotfiles $HOME/.dotfiles
git config --file $HOME/.dotfiles/config status.ShowUntrackedFiles no
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
