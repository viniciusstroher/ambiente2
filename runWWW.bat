docker build https://github.com/viniciusstroher/docker-apache-php56#container:docker
docker run -d -p 127.0.0.1:8000:80 ^
    -v /c/Users/veni/Desktop/docker/ambiente2/www:/var/www ^
    -e PHP_ERROR_REPORTING="E_ALL & ~E_STRICT" ^
    viniciusstroher/docker-apache-php56