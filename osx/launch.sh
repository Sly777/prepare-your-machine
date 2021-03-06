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

RUBY_VERSION="2.5.3";
GIT_NAME="CHANGETHIS";
GIT_EMAIL="CHANGETHIS";
DEFAULT_NODE_VERSION="8";
NVM_VERSION="v0.33.11";

#
# ########################################################################################
#
# ! Please do not touch the code below to avoid from errors/problems !
#
# ########################################################################################
#

bash ./common/before_script.sh;

mkdir ~/macApps_temp;

bash ./osx/osx_settings.sh;

bash ./osx/homebrew_install.sh;

bash ./osx/xcode_install.sh;

bash ./common/brew_prepare.sh;

bash ./common/cliapps_install.sh;

bash ./osx/zshrc_prepare.sh;

bash ./common/guiapps_install.sh;

bash ./osx/quicklook_plugins.sh;

bash ./osx/fonts_install.sh;

bash ./common/git_setting.sh;

bash ./common/ruby_setting.sh;

bash ./common/python_setting.sh;

bash ./common/nodejs_setting.sh;

# ########################################################################################
# OTHER SETTINGS
# ########################################################################################
echo 'Setting Other stuff...';
echo '- Making ZSH default';
chsh -s $(which zsh);
chsh -s /bin/zsh;
# disable prompt for google drive
echo '- Disable prompt for Google Drive';
sudo xattr -d -r com.apple.quarantine /Applications/Google\ Drive.app;
# disable autocorrection of mac osx
echo '- Disable autocorrection of OSX';
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false;

echo;

bash ./common/clear_temp.sh;

bash ./common/after_script.sh;