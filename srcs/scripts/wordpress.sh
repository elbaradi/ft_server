# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    wordpress.sh                                       :+:    :+:             #
#                                                      +:+                     #
#    By: tel-bara <tel-bara@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2021/02/25 22:08:25 by tel-bara      #+#    #+#                  #
#    Updated: 2021/02/25 22:08:26 by tel-bara      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
rm -rf latest.tar.gz
mv /root/wp-config.php wordpress
service mysql restart
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp cli update
wp core install --path='wordpress' --url="/" --title="welcome to tijmen's minimalist wordpress" --admin_user="tijmen" --admin_password="tijmen" --admin_email="t.elbaradi@gmail.com" --allow-root
mysql -e "USE wp_database;UPDATE wp_options SET option_value='https://localhost/wordpress' WHERE option_name='siteurl' OR option_name='home';"