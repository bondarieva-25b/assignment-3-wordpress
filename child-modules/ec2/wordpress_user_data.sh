#!/bin/bash
# Update system
yum update -y

# Install Apache, PHP, and necessary modules
yum install -y httpd php php-mysqlnd php-fpm wget unzip

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Download WordPress
cd /var/www/html
wget https://wordpress.org/latest.zip
unzip latest.zip
rm -rf latest.zip

# Move WordPress to /blog
mkdir /var/www/html/blog
mv wordpress/* /var/www/html/blog/
rm -rf wordpress

# Set permissions
chown -R apache:apache /var/www/html/blog
chmod -R 755 /var/www/html/blog

# Restart Apache
systemctl restart httpd
