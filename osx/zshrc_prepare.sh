#!/bin/bash

# ########################################################################################
#  PREPARING ZSHRC FILE
# ########################################################################################
echo "Preparing Zshrc File...";

echo '########################' >>~/.zshrc;
echo '# Export PATHs' >>~/.zshrc;
echo '########################' >>~/.zshrc;
echo '' >>~/.zshrc;
echo 'export NVM_DIR="$HOME/.nvm"' >>~/.zshrc;
echo 'export NPM_BIN="$(npm config --global get prefix)/bin"' >>~/.zshrc;
echo 'export RBENV_BIN="$HOME/.rbenv/bin"' >>~/.zshrc;
echo 'export ANDROID_HOME="$HOME/Library/Android/sdk"' >>~/.zshrc;
echo 'export ANDROID_SDK="$ANDROID_HOME/tools"' >>~/.zshrc;
echo 'export ANDROID_PT="$ANDROID_HOME/platform-tools"' >>~/.zshrc;
echo 'export ANDROID_NDK_HOME="/usr/local/opt/android-ndk"' >>~/.zshrc;
echo 'export RBENV_SHIMS="$HOME/.rbenv/shims"' >>~/.zshrc;
echo 'export YARN_DIR="$HOME/.yarn/bin"' >>~/.zshrc;
echo 'export OPEN_SSL_BIN="$(brew --prefix)/opt/openssl/bin"' >>~/.zshrc;
echo 'export POSTGRESQL_BIN="/Applications/Postgres.app/Contents/Versions/latest/bin"' >>~/.zshrc;
echo 'export XQUARTZ_BIN="/opt/X11/bin"' >>~/.zshrc;
echo 'export ANT_HOME="/usr/local/opt/ant/libexec"' >>~/.zshrc;
echo 'export MAVEN_HOME="/usr/local/opt/maven"' >>~/.zshrc;
echo 'export GRADLE_HOME="/usr/local/opt/gradle"' >>~/.zshrc;
echo 'export SQLLITE_BIN="/usr/local/opt/sqlite/bin"' >>~/.zshrc;
echo 'export GOPATH="$(go env GOPATH)"' >>~/.zshrc;
echo 'export GO_BIN="/usr/local/opt/go/libexec/bin"' >>~/.zshrc;
echo 'export FLUTTER_SDK="$HOME/flutterSDK/bin"' >>~/.zshrc;
echo '' >>~/.zshrc;
echo 'export PATH="$NVM_DIR:$RBENV_BIN:$ANDROID_SDK:$ANDROID_PT:$RBENV_SHIMS:$YARN_DIR:$PATH"' >>~/.zshrc;
echo 'export PATH="$OPEN_SSL_BIN:$POSTGRESQL_BIN:$XQUARTZ_BIN:$ANDROID_NDK_HOME:$PATH"' >>~/.zshrc;
echo 'export PATH="$ANT_HOME:$MAVEN_HOME:$GRADLE_HOME:$SQLLITE_BIN:$GO_BIN:$NPM_BIN:$FLUTTER_SDK:$PATH"' >>~/.zshrc;
echo '' >>~/.zshrc;

echo '########################' >>~/.zshrc;
echo '# Antigen Settings' >>~/.zshrc;
echo '########################' >>~/.zshrc;
echo '' >>~/.zshrc;
echo 'export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=10' >>~/.zshrc;
echo 'source $(brew --prefix)/share/antigen/antigen.zsh' >>~/.zshrc;
echo '' >>~/.zshrc;
echo 'antigen use oh-my-zsh' >>~/.zshrc;
echo '' >>~/.zshrc;
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
echo;