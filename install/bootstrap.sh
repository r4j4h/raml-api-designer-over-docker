#!/bin/bash

echo "Bootstrap script running."

# Install Git
apt-get -y install git

# Install Node and NPM

# Install Node and NPM > Download and extract node
wget http://nodejs.org/dist/v0.10.26/node-v0.10.26.tar.gz
tar -zxvf node-v0.10.26.tar.gz
rm -r node-v0.10.26.tar.gz
mv node-v0.10.26 /root/
ln -sf /root/node-v0.10.26 /root/node


# Install Node and NPM > Build node
cd /root/node
./configure
make
make install
cd /
export PATH=$PATH:/root/node

# Install RAML API Designer
cd /usr/local
git clone https://github.com/mulesoft/api-designer.git
cd ./api-designer

#sudo apt-get install nodejs nodejs-dev npm
npm install -g grunt-cli
npm install -g bower
npm install -g karma # Optional for running the test suite

npm install

bower install

node_modules/grunt-protractor-runner/node_modules/protractor/bin/webdriver-manager update
echo "We here dude!"
#grunt server

# grunt test

# grunt


echo "Ready!"