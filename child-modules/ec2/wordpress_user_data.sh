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

# Configure WordPress database connection
cat > /var/www/html/blog/wp-config.php <<EOL
<?php
define('DB_NAME', '${rds_db_name}');
define('DB_USER', '${rds_user}');
define('DB_PASSWORD', '${rds_password}');
define('DB_HOST', '${rds_endpoint}');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 * You can generate these at https://api.wordpress.org/secret-key/1.1/salt/
 */
define('AUTH_KEY',         'put-your-unique-phrase-here');
define('SECURE_AUTH_KEY',  'put-your-unique-phrase-here');
define('LOGGED_IN_KEY',    'put-your-unique-phrase-here');
define('NONCE_KEY',        'put-your-unique-phrase-here');
define('AUTH_SALT',        'put-your-unique-phrase-here');
define('SECURE_AUTH_SALT', 'put-your-unique-phrase-here');
define('LOGGED_IN_SALT',   'put-your-unique-phrase-here');
define('NONCE_SALT',       'put-your-unique-phrase-here');

/**#@-*/

/** WordPress Database Table prefix. */
\$table_prefix = 'wp_';

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
EOL

# Restart Apache
systemctl restart httpd
