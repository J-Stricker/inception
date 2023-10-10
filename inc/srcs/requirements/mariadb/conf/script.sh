#!/bin/bash
mysql -e "CREATE DATABASE IF NOT EXISTS ${DB_DATABASE};"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON {$DB_DATABASE}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_USER_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"
mysqld --bind-address=0.0.0.0
