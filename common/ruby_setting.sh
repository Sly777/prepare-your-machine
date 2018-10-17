#!/bin/bash

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
