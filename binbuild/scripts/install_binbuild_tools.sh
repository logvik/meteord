#!/bin/sh
set -e
apt-get update -y
# for npm module re-building
apt-get -y install build-essential libssl-dev git python

NODE_VERSION=8.9.3
NODE_ARCH=x64

# check we need to do this or not

NODE_DIST=node-v${NODE_VERSION}-linux-${NODE_ARCH}

cd /tmp
curl -O -L http://nodejs.org/dist/v${NODE_VERSION}/${NODE_DIST}.tar.gz
tar xvzf ${NODE_DIST}.tar.gz
rm -rf /opt/nodejs
mv ${NODE_DIST} /opt/nodejs

ln -sf /opt/nodejs/bin/node /usr/bin/node
ln -sf /opt/nodejs/bin/npm /usr/bin/npm

npm install -g node-gyp
# pre-install node source code for faster building
/opt/nodejs/bin/node-gyp install ${NODE_VERSION}

$METEORD_DIR/lib/cleanup.sh
