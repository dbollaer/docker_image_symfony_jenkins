# See https://github.com/docker-library/php/blob/master/7.1/fpm/Dockerfile
FROM dbollaer/docker_symfony_image:latest

# jenkins has problems cleaning stuff up, when not created by user jenkins
RUN useradd -r -u 115 -Db /var/www/symfony jenkins  
USER jenkins -u 115
