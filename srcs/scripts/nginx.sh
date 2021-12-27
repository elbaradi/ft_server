# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    nginx.sh                                           :+:    :+:             #
#                                                      +:+                     #
#    By: tel-bara <tel-bara@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/02/25 22:07:59 by tel-bara      #+#    #+#                  #
#    Updated: 2021/02/25 22:08:00 by tel-bara      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

ln -fs /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/
rm -rf /etc/nginx/sites-enabled/default
rm -rf /etc/nginx/sites-available/default