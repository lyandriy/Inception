#!/bin/bash

mkdir -f $(COMPOSE_FILE) -p var/www/html
cd var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

chmod -R 755 wordpress

mv wordpress/wp-config-sample.php wordpress/wp-config.php

cd wordpress

sed -i "s/database_name_here/$USER_MDB/1" wp-config.php

sed -i "s/username_here/$USER_MDB/1" wp-config.php

sed -i "s/password_here/$PASS_MDB/1" wp-config.php

sed -i "s/localhost/$MDB/1" wp-config.php

mkdir -f $(COMPOSE_FILE) -p /var/run/

mkdir -f $(COMPOSE_FILE) -p /var/log/

mkdir -f $(COMPOSE_FILE) -p /run/php

touch php7.4-fpm.log

chmod 644 /var/log/php7.4-fpm.log

php-fpm7.4 -F