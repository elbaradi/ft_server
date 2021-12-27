Note: _This was my fourth 42 project. The code is from January 2021. I built a docker image to set up a wordpress page. This README was written by the amazing [Qing Li](https://github.com/qingqingqingli), it was copied with her permission; it perfectly describes the project._

[![Logo](https://github.com/qingqingqingli/readme_images/blob/master/codam_logo_1.png)](https://github.com/qingqingqingli/ft_server)

# ft_server
***This is a System Administration project. This project uses Docker technology to set up a web server, which will run multiple services (```Wordpress```, ```PhpMyAdmin```, ```MySQL```).***

The project also demonstrates the importance of using scripts to automate tasks. 

## Technical considerations

- ```Docker-compose``` is not allowed
- Container OS must be ```debian buster```
- The server needs to use the ```SSL``` protocol
- The server ```redirects``` to the correct website based on the url

## How to test
> Run the following commands

```shell
$ git clone https://github.com/elbaradi/ft_server
$ cd ft_server
$ docker build -t ft_server .
$ docker run -it -p 80:80 -p 443:443 ft_server
```

> Wordpress can be accessed at

```shell
https://localhost
```

> Phpmyadmin can be accessed at

```shell
https://localhost/phpmyadmin
username = tijmen
password = tijmen
```
