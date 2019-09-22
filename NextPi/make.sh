#!/bin/sh

# Ensure we have everything we need
sudo apt install subversion build-essential autoconf libtool automake pkg-config libao-dev -y

# Bootstrap the (originally SVN) envrionment
./tools/svn-bootstrap.sh

# Configure the build chain, let it know we don't use /usr/local
./configure --prefix=/usr

# Now build
make

