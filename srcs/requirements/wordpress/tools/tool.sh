#!/bin/bash

mkdir -p var/www/html
cd var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

chmod -R 755 wordpress

mv wordpress/wp-config-sample.php wordpress/wp-config.php

cd wordpress

sed -i "s/database_name_here/USER_MDB/1" wp-config.php

sed -i "s/username_here/USER_MDB/1" wp-config.php

sed -i "s/password_here/PASS_MDB/1" wp-config.php

sed -i "s/localhost/MDB/1" wp-config.php

mkdir -p /var/run/

php-fpm7.4 -F