#!/bin/bash

mkdir -p var/www/html
cd var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

chmod -R 755 wordpress

chown -R www-data:www-data wordpress

mv wordpress/wp-config-sample.php wordpress/wp-config.php

cd wordpress

sed -i "s/database_name_here/$DATABASE/1" wp-config.php

sed -i "s/username_here/$USER_MDB/1" wp-config.php

sed -i "s/password_here/$USER_PASS/1" wp-config.php

sed -i "s/localhost/mariadb/1" wp-config.php

mkdir -p /var/run/

mkdir -p /var/log/

mkdir -p /run/php

touch php7.3-fpm.log

chmod 644 /var/log/php7.3-fpm.log

php-fpm7.3 -F