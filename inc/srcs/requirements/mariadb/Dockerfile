FROM debian:buster
WORKDIR /
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y mariadb-server curl
RUN service mysql start
#COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/script.sh /
RUN chmod +x script.sh
RUN sed -i 's/bind-address/bind-address=0.0.0.0 #/i' /etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE 3306
ENTRYPOINT [ "bash", "/script.sh" ]
