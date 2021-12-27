# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    mariadb.sh                                         :+:    :+:             #
#                                                      +:+                     #
#    By: tel-bara <tel-bara@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/02/25 22:08:06 by tel-bara      #+#    #+#                  #
#    Updated: 2021/02/25 22:08:07 by tel-bara      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

service mysql start
echo "CREATE DATABASE wp_database;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wp_database.* TO 'tijmen'@'localhost' IDENTIFIED BY 'tijmen' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root