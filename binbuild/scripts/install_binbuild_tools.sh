set -e
apt-get update -y
# for npm module re-building
apt-get install -y curl bzip2 build-essential python git imagemagick libmagickcore-dev libmagickwand-dev

npm install -g node-gyp
# pre-install node source code for faster building
node-gyp install ${NODE_VERSION}

bash $METEORD_DIR/lib/cleanup.sh
