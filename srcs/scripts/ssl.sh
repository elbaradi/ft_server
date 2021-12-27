# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    ssl.sh                                             :+:    :+:             #
#                                                      +:+                     #
#    By: tel-bara <tel-bara@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/02/10 14:36:47 by tel-bara      #+#    #+#                  #
#    Updated: 2021/02/25 16:16:56 by tel-bara      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

openssl req -x509 -nodes -days 1024 -subj "/C=NL/ST=Noord-Holland/L=Amsterdam/O=CODAM/CN=localhost" -newkey rsa:2048 -keyout /etc/ssl/nginx.key -out /etc/ssl/nginx.crt