# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Dockerfile                                         :+:    :+:             #
#                                                      +:+                     #
#    By: tel-bara <tel-bara@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/02/10 12:38:41 by tel-bara      #+#    #+#                  #
#    Updated: 2021/02/25 22:44:19 by tel-bara      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

# Specifying container OS.
FROM	debian:buster

# General configuration.
ENV		AUTO_INDEX="on"
ARG		SCRIPTS="srcs/scripts"
ARG		SRCS="srcs"
WORKDIR	/var/www/html

# Installing packages & software.
COPY	$SCRIPTS/install.sh /root/
RUN		bash /root/install.sh

# Setting up SSL certificate
COPY	$SCRIPTS/ssl.sh /root/
RUN		bash /root/ssl.sh

# Configuring nginx.
COPY	$SCRIPTS/nginx.sh /root/
COPY	$SRCS/nginx.conf /etc/nginx/sites-available/
COPY	$SRCS/index.html /var/www/html
RUN		bash /root/nginx.sh

# Configuring MariaDB.
COPY	$SCRIPTS/mariadb.sh /root/
RUN		bash /root/mariadb.sh

# Configuring phpMyAdmin.
COPY	$SCRIPTS/phpmyadmin.sh /root/
RUN		bash /root/phpmyadmin.sh
COPY	$SRCS/config.inc.php phpmyadmin

# Configuring WordPress.
COPY	$SCRIPTS/wordpress.sh /root/
COPY	$SRCS/wp-config.php /root/
RUN		bash /root/wordpress.sh

# Adding toggle functionality for autoindex. Set to 'on' by default. 
# Delete index.html and index.nginx-debian.html to see the autoindex functionality in your browser. 
COPY	$SCRIPTS/toggle_autoindex.sh /root/

# Granting permissions and access to ensure execution on different systems.
RUN		chown -R www-data:www-data /var/www/*
RUN		chmod -R 755 /var/www/*
RUN		chmod 775 /root/toggle_autoindex.sh

# Start services with docker run.
CMD		service mysql restart ; \
		service php7.3-fpm start ; \
		nginx -g 'daemon off;'

# Exposing ports. Use 'docker run -p 80:80 -p 443:443 <image>' to publish and see the server in your browser.
EXPOSE	80 443