#!/bin/bash

# ########################################################################################
# PREPARE HOMEBREW
# ########################################################################################
echo "Preparing Homebrew..."
brew update
brew upgrade
brew cleanup; brew doctor

echo
