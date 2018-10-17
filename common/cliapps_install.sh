#!/bin/bash

# ########################################################################################
# CLI APP LIST
# ########################################################################################
echo 'Installing CLI APPs...'
echo
echo '- Installing ZSH'
brew install zsh # ZSH support
echo '- Installing ZSH Completions'
brew install zsh-completions # ZSH plugin
echo '- Installing Antigen'
brew install antigen # Antigen for extending ZSH
echo '- Installing Yarn (without Node.js)'
brew install yarn --without-node # Yarn for Node.js packages
echo '- Installing Watchman'
brew install watchman # Watch file changes
echo '- Installing Git'
brew install git # GIT
echo '- Installing Python'
brew install python # Python
echo '- Installing Ruby Env Manager'
brew install rbenv ruby-build rbenv-default-gems rbenv-gemset # Ruby Env Manager
echo '- Installing GO'
brew install golang # GO language
echo '- Installing debugger for GO'
brew install go-delve/delve/delve # Debugger for GO
echo '- Installing Mono (C#)'
brew install mono # C# for Mac/Linux
echo '- Installing Ant (Java/Android)'
brew install ant # for Java/Android
echo '- Installing Maven (Java/Android)'
brew install maven # for Java/Android
echo '- Installing Gradle (Java/Android)'
brew install gradle # for Java/Android
echo '- Installing Mysql'
brew install mysql # MySQL
echo '- Installing AG Code Search Tool (the silver searcher)'
brew install the_silver_searcher # AG Code Search tool
echo '- Installing Crystal'
brew install crystal-lang # Crystal Language
echo '- Installing OpenSSL'
brew install openssl # OpenSSL for local SSL env

echo
