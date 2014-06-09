#!/bin/bash

echo "Install RAML API Designer script running."


# Install RAML API Designer's Dependency Resolvers
npm install -g grunt-cli
npm install -g bower
npm install -g karma


# Install Things Needed for RAML API Designer
# (one of these is needed for the Grunt xdg-open task)
apt-get install -y links links2 lynx w3m


# Install RAML API Designer
cd /usr/local; git clone https://github.com/mulesoft/api-designer.git; cd ./api-designer


# Install RAML API Designer's Dependencies
cd /usr/local/api-designer; npm install;
#cd /usr/local/api-designer; bower install --allow-root --config.interactive=false
/usr/local/api-designer/node_modules/grunt-protractor-runner/node_modules/protractor/bin/webdriver-manager update


#grunt server
# grunt test
# grunt


echo "Install RAML API Designer script finished."