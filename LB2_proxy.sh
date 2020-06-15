#!/bin/bash
#####################################
# Modul: 300
# LB 2
# Asli Kaya
# Version 1.1
####################################


####################################
# Apache installieren
####################################
apt-get update -y
apt-get -y install apache2

####################################
#Sites-Available und apache restarten
####################################
cp /vagrant/001-mysite.conf /etc/apache2/sites-available/
a2ensite 001-mysite.conf
a2enmod proxy
a2enmod proxy_http
service apache2 restart

####################################
#Firewall konfigurieren
####################################
apt-get install ufw
sudo ufw enable
sudo ufw allow 80/tcp
sudo ufw allow from 192.168.43.214 to any port 22

