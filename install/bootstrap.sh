#!/bin/bash

echo "Bootstrap script running."

apt-get -y install git

cd /usr/local
git clone https://github.com/mulesoft/api-designer.git
cd ./api-designer

#sudo apt-get install nodejs nodejs-dev npm
exit
npm install -g grunt-cli
npm install -g bower
npm install -g karma # Optional for running the test suite

npm install

bower install

node_modules/grunt-protractor-runner/node_modules/protractor/bin/webdriver-manager update

grunt server

# grunt test

# grunt


echo "Ready!"

