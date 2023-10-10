FROM debian:buster
RUN apt-get update -y				\
	&& apt-get upgrade -y			\
	&& apt-get install -y nginx		\
	&& apt-get install vim -y		\
	&& apt-get install curl -y		\
	&& apt-get install openssl -y	\
	&& mkdir -p /etc/nginx/ssl		\
	&& apt-get install curl -y		\
	&& mkdir -p /var/run/nginx		\
	&& openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/0=42/OU=42/CN=fsariogl.42.fr/UID=fsariogl"
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html
CMD ["nginx", "-g", "daemon off;"] 
