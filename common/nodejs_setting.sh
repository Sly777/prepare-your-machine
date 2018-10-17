#!/bin/bash

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
