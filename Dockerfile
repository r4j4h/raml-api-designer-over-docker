FROM ubuntu:precise

# Install dependencies
RUN apt-get -y update
RUN apt-get install -y bridge-utils wget dnsmasq build-essential python 

# Install HNK
ADD bin/install-node.sh /usr/bin/install-node.sh
RUN install-node.sh

EXPOSE 9013

