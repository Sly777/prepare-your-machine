#!/bin/bash

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
