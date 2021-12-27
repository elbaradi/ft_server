# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    install.sh                                         :+:    :+:             #
#                                                      +:+                     #
#    By: tel-bara <tel-bara@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/02/10 14:36:44 by tel-bara      #+#    #+#                  #
#    Updated: 2021/02/25 18:09:19 by tel-bara      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

apt-get update && apt-get upgrade -y
apt-get install wget -y
apt-get install nginx -y
apt-get install mariadb-server -y
apt-get install php-fpm php-mysql -y