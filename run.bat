#docker pull cytopia/mysql-5.6
docker run -i ^
    -p 127.0.0.1:3306:3306 ^
    -e MYSQL_ROOT_PASSWORD=root ^
    -v /c/Users/veni/Desktop/docker/ambiente2/mysql_data:/var/lib/mysql ^
    -t cytopia/mysql-5.6

docker run -d -p 127.0.0.1:8000:80 ^
    -v /c/Users/veni/Desktop/docker/ambiente2/www:/var/www ^
    -e PHP_ERROR_REPORTING="E_ALL & ~E_STRICT" ^
    bylexus/apache-php56