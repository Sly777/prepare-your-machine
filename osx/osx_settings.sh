#!/bin/bash

# ########################################################################################
# MAC OS SETTINGS
# ########################################################################################
echo "Changing Mac OS settings...";
defaults write com.apple.finder AppleShowAllFiles YES; # show hidden files
defaults write NSGlobalDomain AppleShowAllExtensions -bool true; # show all file extensions
killall Finder 2>/dev/null;

echo;