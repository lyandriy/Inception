#!/bin/bash

mkdir -p var/www/html
cd var/www/html

wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

chmod -R 755 wordpress
chown -R www-data:www-data wordpress

mv wordpress/* .
mv wp-config-sample.php wp-config.php

sed -i "s/database_name_here/$DATABASE/1" wp-config.php

sed -i "s/username_here/$USER_NAME/1" wp-config.php

sed -i "s/password_here/$USER_PASS/1" wp-config.php

sed -i "s/localhost/mariadb/1" wp-config.php

mkdir -p /var/run/

mkdir -p /var/log/

mkdir -p /run/php/

touch php7.3-fpm.log

chmod 644 /var/log/php7.3-fpm.log

wp core install --url=$DOMAIN_NAME --title=$TITLE_WP --admin_user=$USER_NAME --admin_password=$USER_PASS --admin_email=$EMAIL_WP --skip-email --allow-root

php-fpm7.3 -F
