alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".dotfiles" >> $HOME/.gitignore
git clone --bare https://github.com/JamesMowery/dotfiles $HOME/.dotfiles
dots config --local status.showUntrackedFiles no
dots checkout
