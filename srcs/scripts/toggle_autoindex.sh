# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    toggle_autoindex.sh                                :+:    :+:             #
#                                                      +:+                     #
#    By: tel-bara <tel-bara@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/02/25 22:08:20 by tel-bara      #+#    #+#                  #
#    Updated: 2021/02/25 22:35:38 by tel-bara      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

if [ "$AUTO_INDEX" == "on" ]
then
	sed -i 's/    autoindex off;/    autoindex on;/' /etc/nginx/sites-available/nginx.conf
	echo "autoindex is turned on"
elif [ "$AUTO_INDEX" == "off" ]
then
	sed -i 's/    autoindex on;/    autoindex off;/' /etc/nginx/sites-available/nginx.conf
	echo "autoindex is turned off"
fi

service nginx reload