# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    phpmyadmin.sh                                      :+:    :+:             #
#                                                      +:+                     #
#    By: tel-bara <tel-bara@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/02/25 22:07:52 by tel-bara      #+#    #+#                  #
#    Updated: 2021/02/25 22:07:54 by tel-bara      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
tar -xf phpMyAdmin-5.0.1-english.tar.gz
rm -rf phpMyAdmin-5.0.1-english.tar.gz
mv phpMyAdmin-5.0.1-english phpmyadmin