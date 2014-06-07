FROM ubuntu:precise

# Install dependencies
RUN apt-get -y update
RUN apt-get install -y bridge-utils wget dnsmasq build-essential python nodejs nodejs-dev npm 

# Install HNK
ADD install/boostrap.sh /usr/bin/bootstrap.sh
RUN bootstrap.sh

EXPOSE 9013

