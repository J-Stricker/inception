
sleep 5

wp core download --allow-root
wp core config --allow-root --dbname=${DB_DATABASE} --dbuser=${DB_USER} --dbpass=${DB_USER_PASSWORD} --dbhost=mariadb:3306 --dbprefix=wp_  --force
wp core install --allow-root --url=https://fsariogl.42.fr --admin_user=${ADMIN_USR} --admin_password=${ADMIN_PWD} --title=${TITLE} --admin_email=${WP_MAIL}
wp user create --allow-root ${WP_USR} ${WP_USR_MAIL} --role=subscriber --user_pass=${WP_USR_PWD}
wp plugin update --allow-root --all
mkdir -p /run/php/
php-fpm7.3 -F
