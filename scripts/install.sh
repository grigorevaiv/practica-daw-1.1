#!/bin/bash

#shows a command
#set -ex breaks the execution
set -x
echo "Dead by tmrw"
apt update
#apt upgrade -yRemote-SSH: Connect to Host-y
cp ../conf/000-default.conf /etc/apache2/sites-available
apt install php libapache2-mod-php php-mysql -y
a2enmod rewrite
systemctl restart apache2
#copiar el archivo php index a var www html
cp ../php/index.php /var/www/html