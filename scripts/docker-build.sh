#!/bin/bash

set -ex

apt-get update
apt-get install -y ruby ruby-dev rubygems gcc make rpm curl
gem install --no-ri --no-rdoc --version $FPM_VERSION fpm
curl --location https://github.com/Yelp/dumb-init/releases/download/v${DUMB_INIT_VERSION}/dumb-init_${DUMB_INIT_VERSION}_amd64.deb > /tmp/dumb-init.deb
dpkg -i /tmp/dumb-init.deb
rm /tmp/dumb-init.deb
apt-get purge -y curl
apt-get autoclean -y
