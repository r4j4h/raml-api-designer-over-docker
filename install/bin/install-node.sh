#!/bin/bash


# Download and extract node
wget http://nodejs.org/dist/v0.10.26/node-v0.10.26.tar.gz
tar -zxvf node-v0.10.26.tar.gz
rm -r node-v0.10.26.tar.gz
mv node-v0.10.26 /root/
ln -sf /root/node-v0.10.26 /root/node


# Build node
cd /root/node
./configure
make
make install
cd /
export PATH=$PATH:/root/node

