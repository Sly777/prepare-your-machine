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

clear
echo
echo
echo
echo '------------------------------------------------'
echo 'Prepare Your Machine - OSX'
echo 'https://github.com/Sly777/prepare-your-machine'
echo '------------------------------------------------'
echo 'Script is running . . .'
echo
echo

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

# ########################################################################################
# MAC OS SETTINGS
# ########################################################################################
echo "Changing Mac OS settings..."
defaults write com.apple.finder AppleShowAllFiles YES; # show hidden files
defaults write NSGlobalDomain AppleShowAllExtensions -bool true; # show all file extensions
killall Finder 2>/dev/null;

echo

###
### Install Homebrew
###
echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew --version

echo

###
### Xcode Command Line
### -- I tried this on OS X El Capitan 10.11
###
echo "Installing XCode Command Line..."
sudo xcode-select -p
RESULT=$?
if [ $RESULT -eq 2 ]
    then
        check=$((sudo xcode-\select --install) 2>&1)
        echo $check
        str="xcode-select: note: install requested for command line developer tools"
        while [[ "$check" == "$str" ]];
        do
            osascript -e 'tell app "System Events" to display dialog "xcode command-line tools missing." buttons "OK" default button 1 with title "xcode command-line tools"'
            exit;
        done
    else
        echo
        echo '...'
        echo 'xcode-select is already installed.'
        echo '...'
        echo
fi

echo

# ########################################################################################
# PREPARE HOMEBREW
# ########################################################################################
echo "Preparing Homebrew..."
brew update
brew upgrade
brew cleanup; brew doctor

echo

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

# ########################################################################################
# GUI APP LIST
# ########################################################################################
echo 'Installing GUI APPs...'
echo
echo '- Installing Java'
brew cask install java
echo '- Installing Google Chrome'
brew cask install google-chrome
echo '- Installing Firefox'
brew cask install firefox
echo '- Installing Hyper (Terminal)'
brew cask install hyper
echo '- Installing Spotify'
brew cask install spotify
echo '- Installing Skype'
brew cask install skype
echo '- Installing Slack'
brew cask install slack
echo '- Installing Zeplin'
brew cask install zeplin
echo '- Installing Sourcetree'
brew cask install sourcetree
echo '- Installing Alfred'
brew cask install alfred
echo '- Installing Android Studio'
brew cask install android-studio
echo '- Installing Caffeine'
brew cask install caffeine
echo '- Installing Docker'
brew cask install docker
echo '- Installing Docker Toolbox'
brew cask install docker-toolbox
echo '- Installing Genymotion'
brew cask install genymotion
echo '- Installing Postman'
brew cask install postman
echo '- Installing Spectacle'
brew cask install spectacle
echo '- Installing Teamviewer'
brew cask install teamviewer
echo '- Installing the Unarchiver'
brew cask install the-unarchiver
echo '- Installing Virtualbox'
brew cask install virtualbox
echo '- Installing Appcleaner'
brew cask install appcleaner
echo '- Installing XQuartz'
brew cask install xquartz
echo '- Installing Postgres'
brew cask install postgres
echo '- Installing PGAdmin4'
brew cask install pgadmin4
echo '- Installing Android SDK'
brew cask install android-sdk
echo '- Installing Android NDK'
brew cask install android-ndk
echo '- Installing Visual Studio Code'
brew cask install visual-studio-code

echo

# ########################################################################################
# QUICK LOOK PLUGINS
# ########################################################################################
echo 'Installing Quick Look Plugins for OSX...'
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webpquicklook
brew cask install suspicious-package

echo

# ########################################################################################
# FONT SETTINGS
# ########################################################################################
echo 'Installing Coding Fonts...'
brew tap caskroom/fonts
brew cask install font-fira-code
brew cask install font-inconsolata
brew cask install font-awesome-terminal-fonts
brew cask install font-fira-mono-for-powerline

echo

# ########################################################################################
# GIT SETTINGS
# ########################################################################################
echo 'Setting GIT...'
git config --global user.name $GIT_NAME
git config --global user.email $GIT_EMAIL
git config --global credential.helper osxkeychain
ssh-keygen -t rsa -C $GIT_EMAIL
## GIT PERFORMANCE (https://stackoverflow.com/a/31718684/2093240)
git config --global core.preloadindex true
git config --global core.fscache true
git config --global gc.auto 256

echo

# ########################################################################################
# RUBY SETTINGS & PACKAGES
# ########################################################################################
echo 'Setting Ruby...'
sudo rbenv install $RUBY_VERSION
sudo rbenv global $RUBY_VERSION
sudo rbenv shell $RUBY_VERSION
sudo rbenv local $RUBY_VERSION
sudo gem update --system
echo '- Installing Bundler'
sudo gem install bundler
echo 'bundler' >> "$(brew --prefix rbenv)/default-gems"
echo 'gem: --no-document' >> ~/.gemrc
echo '- Installing Jekyll'
sudo gem install jekyll
echo '- Installing Kramdown'
sudo gem install kramdown
echo '- Installing Ruby on Rails'
sudo gem install rails
echo 'rails' >> "~/.rbenv/default-gems"

echo

# ########################################################################################
# PYTHON SETTINGS & PACKAGES
# ########################################################################################
echo 'Setting Python...'
pip install --upgrade setuptools
pip install --upgrade pip

echo

# ########################################################################################
# NODE.JS SETTINGS & PACKAGES
# ########################################################################################
echo 'Setting Node.JS'
echo '- Installing NVM'
curl -o- https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION/install.sh | bash # NVM - node.js version manager
command -v nvm
nvm install node
nvm install $DEFAULT_NODE_VERSION
nvm use $DEFAULT_NODE_VERSION
nvm alias default node
echo '- Installing NPM Check Updates'
npm install -g npm-check-updates
echo '- Installing CRA'
npm install -g create-react-app
echo '- Installing React Native'
npm install -g react-native-cli
echo '- Installing React Native GIT Update'
npm install -g react-native-git-upgrade
echo '- Installing HPM'
npm install -g hpm-cli
echo '- Installing Serverless'
npm install -g serverless
echo '- Installing FKill Plugin'
npm install -g fkill-cli

echo

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
###
### Cleaner
###
echo 'Cleaning temp files...'
cd ..
rm -rf ~/macApps_temp

###
### Finish
###
clear
echo
echo
echo
echo '------------------------------------------------'
echo 'everything is ready.'
echo '------------------------------------------------'
echo 'Prepare Your Machine - OSX'
echo 'https://github.com/Sly777/prepare-your-machine'
echo '------------------------------------------------'
echo
