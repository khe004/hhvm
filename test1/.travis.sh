#!/bin/sh
#set -ex
#apt update -y
#DEBIAN_FRONTEND=noninteractive apt install -y php-cli zip unzip
hhvm --version
php --version

#(
#  cd $(mktemp -d)
#  curl https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
#)
composer install
#composer require hhvm/hsl hhvm/hhvm-autoload
#composer require --dev hhvm/hhast hhvm/hacktest facebook/fbexpect

hh_client
vendor/bin/hacktest tests/
#cat composer.json
#if !(hhvm --version | grep -q -- -dev); then
#  vendor/bin/hhast-lint
#fi