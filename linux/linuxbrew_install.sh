#!/bin/bash

# ########################################################################################
# INSTALL LINUXBREW
# ########################################################################################
echo "Preparing Linuxbrew...";
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)";
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/.profile;
echo 'export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"' >>~/.profile;
echo 'export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"' >>~/.profile;
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/.zshrc;
sudo apt-get install build-essential;
echo 'fpath=(/home/linuxbrew/.linuxbrew/share/zsh-completions $fpath)' >>~/.zshrc;
echo;