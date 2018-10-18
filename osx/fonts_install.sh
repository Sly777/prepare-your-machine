#!/bin/bash

# ########################################################################################
# FONT SETTINGS
# ########################################################################################
echo 'Installing Coding Fonts...';
brew tap caskroom/fonts;
brew cask install font-fira-code;
brew cask install font-inconsolata;
brew cask install font-awesome-terminal-fonts;
brew cask install font-fira-mono-for-powerline;

echo;