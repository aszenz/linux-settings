#!/bin/bash

#  install essential utilities 
cat programs.list | xargs apt-get install -y install 

# install oh-my-zsh 
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf 
~/.fzf/install --all

# Install oh-my-zsh plugins 
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting 
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions 

# Install zsh theme
git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt 
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme 

# Install nix package manager
sudo curl -L https://nixos.org/nix/install | sh

# import settings
SETTINGS_URL=https://raw.githubusercontent.com/aszenz/linux-settings/master
wget -O - "$SETTINGS_URL/.zshrc > ~/.zshrc"
wget -O - "$SETTINGS_URL/.vimrc > ~/.vimrc"
wget -O - "$SETTINGS_URL/.gitconfig > ~/.gitconfig"
wget -O - "$SETTINGS_URL/.gitconfig > ~/.fzf.zsh"
wget -O - "$SETTINGS_URL/.gitconfig > ~/.inputrc"
mkdir -p ~/.config/i3
wget -O - "$SETTINGS_URL/.config/i3/config > ~/.config/i3/inputrc"
wget -O - "$SETTINGS_URL/.config/i3/i3status.conf > ~/.config/i3/i3status.conf"