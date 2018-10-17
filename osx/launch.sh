#!/bin/bash

# ########################################################################################
#
# Before use this script, please be sure
# to install Xcode before run this. You need to
# install Xcode from App Store.
#
# It's prepared for developers (especially for javascript devs)
# created by: Ilker Guller (https://ilkerguller.com) <me@ilkerguller.com>
#
# to use:
# sh launch.sh
#
# Sometimes it will need some prompt (to get sudo, to create key, ...etc.)
#
#
# ########################################################################################
#
# Script Settings
# - you can change these settings how you want.
#

RUBY_VERSION="2.5.0"
GIT_NAME="Ilker Guller"
GIT_EMAIL="me@ilkerguller.com"
DEFAULT_NODE_VERSION="8"
NVM_VERSION="v0.33.11"

#
# ########################################################################################
#
# ! Please do not touch the code below to avoid from errors/problems !
#
# ########################################################################################
#

bash ./../common/before_script.sh;

mkdir ~/macApps_temp
cd ~/macApps_temp

###
### Exports
###
export NVM_DIR="$HOME/.nvm"
export RBENV_BIN="$HOME/.rbenv/bin"
export ANDROID_HOME="/usr/local/share/android-sdk"
export ANDROID_SDK="$ANDROID_HOME/tools"
export ANDROID_PT="$ANDROID_HOME/platform-tools"
export ANDROID_NDK_HOME="/usr/local/opt/android-ndk"
export RBENV_SHIMS="$HOME/.rbenv/shims"
export YARN_DIR="$HOME/.yarn/bin"
export OPEN_SSL_BIN="$(brew --prefix)/opt/openssl/bin"
export POSTGRESQL_BIN="/Applications/Postgres.app/Contents/Versions/latest/bin"
export XQUARTZ_BIN="/opt/X11/bin"
export ANT_HOME="/usr/local/opt/ant/libexec"
export MAVEN_HOME="/usr/local/opt/maven"
export GRADLE_HOME="/usr/local/opt/gradle"
export SQLLITE_BIN="/usr/local/opt/sqlite/bin"
export GOPATH="$(go env GOPATH)"
export GO_BIN="/usr/local/opt/go/libexec/bin"

export PATH="$NVM_DIR:$RBENV_BIN:$ANDROID_SDK:$ANDROID_PT:$RBENV_SHIMS:$YARN_DIR:$PATH"
export PATH="$OPEN_SSL_BIN:$POSTGRESQL_BIN:$XQUARTZ_BIN:$ANDROID_NDK_HOME:$PATH"
export PATH="$ANT_HOME:$MAVEN_HOME:$GRADLE_HOME:$SQLLITE_BIN:$GO_BIN:$PATH"

bash ./osx_settings.sh;

bash ./homebrew_install.sh;

bash ./xcode_install.sh;

bash ./../common/brew_prepare.sh;

bash ./../common/cliapps_install.sh;

bash ./../common/guiapps_install.sh;

bash ./quicklook_plugins.sh;

bash ./fonts_install.sh;

bash ./../common/git_setting.sh;

bash ./../common/ruby_setting.sh;

bash ./../common/python_setting.sh;

bash ./../common/nodejs_setting.sh;

# ########################################################################################
# OTHER SETTINGS
# ########################################################################################
echo 'Setting Other stuff...'
echo '- Making ZSH default'
chsh -s $(which zsh)
chsh -s /bin/zsh
# disable prompt for google drive
echo '- Disable prompt for Google Drive'
sudo xattr -d -r com.apple.quarantine /Applications/Google\ Drive.app
# disable autocorrection of mac osx
echo '- Disable autocorrection of OSX'
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

echo 

bash ./../common/clear_temp.sh;

bash ./../common/after_script.sh;

