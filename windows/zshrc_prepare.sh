#!/bin/bash

# ########################################################################################
#  PREPARING ZSHRC FILE
# ########################################################################################
echo "Preparing Zshrc File...";

echo 'export PATH=$PATH:/home/linuxbrew/.linuxbrew/opt/go/libexec/bin;' >>~/.zshrc;
echo 'export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=10' >>~/.zshrc;
echo '' >>~/.zshrc;
echo 'export NVM_LAZY_LOAD=true' >>~/.zshrc;
echo 'export NVM_AUTO_USE=true' >>~/.zshrc;
echo '' >>~/.zshrc;
echo 'source $(brew --prefix)/share/antigen/antigen.zsh' >>~/.zshrc;
echo '' >>~/.zshrc;
echo 'antigen use oh-my-zsh' >>~/.zshrc;
echo '' >>~/.zshrc;
echo '###############################################';
echo 'It will give some error but antigen will work';
echo '###############################################';

echo 'antigen bundle git' >>~/.zshrc;
echo 'antigen bundle rsync' >>~/.zshrc;
echo 'antigen bundle heroku' >>~/.zshrc;
echo 'antigen bundle history' >>~/.zshrc;
echo 'antigen bundle osx' >>~/.zshrc;
echo 'antigen bundle node' >>~/.zshrc;
echo 'antigen bundle aws' >>~/.zshrc;
echo 'antigen bundle github' >>~/.zshrc;
echo 'antigen bundle command-not-found' >>~/.zshrc;
echo 'antigen bundle gusaiani/elixir-oh-my-zsh' >>~/.zshrc;
echo 'antigen bundle dijitalmunky/nvm-auto' >>~/.zshrc;
echo 'antigen bundle zsh-users/fizsh' >>~/.zshrc;
echo 'antigen bundle zsh-users/zsh-syntax-highlighting' >>~/.zshrc;
echo 'antigen bundle zsh-users/zsh-history-substring-search' >>~/.zshrc;
echo 'antigen bundle zsh-users/zsh-autosuggestions' >>~/.zshrc;
echo 'antigen bundle zsh-users/zsh-completions' >>~/.zshrc;
echo '' >>~/.zshrc;
echo 'antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship' >>~/.zshrc;
echo '' >>~/.zshrc;
echo 'antigen apply' >>~/.zshrc;
echo '' >>~/.zshrc;

echo;