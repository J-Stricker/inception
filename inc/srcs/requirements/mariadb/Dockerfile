FROM debian:buster
WORKDIR /
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y mariadb-server curl
RUN service mysql start
RUN mysql -e "CREATE DATABASE IF NOT EXISTS $DB_DATABASE;"
RUN mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASSWORD';"
RUN mysql -e "GRANT ALL PRIVILEGES ON $DB_DATABASE.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_USER_PASSWORD';"
RUN mysql -e "FLUSH PRIVILEGES;"

EXPOSE 3306
ENTRYPOINT [ "mysqld", "--bind-address=0.0.0.0" ]
