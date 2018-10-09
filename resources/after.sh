#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.
#
# If you have user-specific configurations you would like
# to apply, you may also create user-customizations.sh,
# which will be run after this script.

sudo DEBIAN_FRONTEND=noninteractive apt-get -y remove postgresql postgresql-contrib mongodb-org
sudo DEBIAN_FRONTEND=noninteractive apt-get -y remove ngrok-client ngrok-server
sudo DEBIAN_FRONTEND=noninteractive apt-get -y remove couchdb

sudo service php5.6-fpm stop
sudo service php7.0-fpm stop
sudo service php7.1-fpm stop
sudo chmod ugo-x /etc/init.d/php5.6-fpm
sudo chmod ugo-x /etc/init.d/php7.0-fpm
sudo chmod ugo-x /etc/init.d/php7.1-fpm

sudo service php7.2-fpm restart
sudo service php7.3-fpm restart
