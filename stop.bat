@ECHO OFF
FOR /f "tokens=*" %%i IN ('docker ps -q -f "ancestor=cytopia/mysql-5.6" --format={{.ID}}') DO docker stop %%i
FOR /f "tokens=*" %%i IN ('docker ps -q -f "ancestor=bylexus/apache-php56" --format={{.ID}}') DO docker stop %%i
