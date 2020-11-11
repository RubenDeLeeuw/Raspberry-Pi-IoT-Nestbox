#!/bin/bash

# Install camera
echo "installing Raspberry pi camera"
sudo apt install python3-picamera -y


# Update & Upgrade

echo "updating & upgrading Raspi"
sudo apt-get update
sudo apt-get upgrade -y

# Install python3

echo "installing python3"
sudo apt install python3-pip

# Install Apache

echo "installing apache"
sudo apt-get install apache2 sqlite -y
sudo service apache2 restart

# Install PHP

echo "Installing PHP"
sudo apt-get install php php-gd php-sqlite3 php-curl libapache2-mod-php -y
sudo apt-get install php7.3 php7.3-gd php7.3-sqlite3 php7.3-curl libapache2-mod-php -y
sudo apt-get install smbclient -y
sudo apt-get install php-mysql php-mbstring php-gettext php-intl php-redis php-imagick php-igbinary php-gmp php-curl php-gd php-zip php-imap php-ldap php-bz2 php-phpseclib php-xml -y
sudo apt install -y apache2 mariadb-server libapache2-mod-php7.3 php7.3-gd php7.3-json php7.3-mysql php7.3-curl php7.3-intl php7.3-mcrypt php-imagick php7.3-zip php7.3-xml php7.3-mbstring

# Install mariadb

echo "installing mariadb"
sudo apt-get install mariadb-server mariadb-client -y
sudo service apache2 restart
sudo systemctl enable apache2
cd /var/www/html
sudo rm index.html

#install owncloud
echo "Installing owncloud"
sudo wget https://download.owncloud.org/community/owncloud-complete-20200731.zip
sudo mv owncloud-complete-20200731.zip /var/www/html
cd /var/www/html
sudo unzip owncloud-complete-20200731.zip
sudo mkdir owncloud
cd owncloud
sudo mkdir data
sudo chown www-data:www-data /var/www/html/owncloud/data
sudo chmod 750 /var/www/html/owncloud/data

# Raspberry Pi gateway
echo "Installing gateway"
sudo apt install hostapd
sudo systemctl unmask hostapd
sudo systemctl enable hostapd
sudo apt install dnsmasq -y
sudo DEBIAN_FRONTEND=noninteractive apt install -y netfilter-persistent iptables-persistent
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo netfilter-persistent save
sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig



