#!/bin/bash
#####################################
# Modul: 300
# LB 2
# Asli Kaya
# Version 1.1
####################################



####################################
# DB Installieren und konfigurieren
####################################
# option -y zur automatisch mit ja beantworten, non-interaktiv
apt-get update -y
apt-get -y install apache 2
apt install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php -y
service apache 2 restart


###################################
#Firewall konfigurieren
###################################
apt-get install ufw
sudo ufw enable
sudo ufw allow 80/tcp
sudo ufw allow from 192.168.43.214 to any port 22
