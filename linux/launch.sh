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

bash ./linux/linuxbrew_install.sh;

bash ./common/brew_prepare.sh;

brew install gcc;

bash ./common/cliapps_install.sh;

bash ./linux/zshrc_prepare.sh;

bash ./osx/fonts_install.sh;

bash ./common/git_setting.sh;

bash ./common/ruby_setting.sh;

bash ./common/python_setting.sh;

bash ./common/nodejs_setting.sh;

bash ./common/clear_temp.sh;

bash ./common/after_script.sh;