ssh-keygen -t ed25519 -C "jmowery@gmail.com"
eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/id_ed25519
cat $HOME/.ssh/id_ed25519.pub
