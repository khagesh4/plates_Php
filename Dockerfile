FROM trafex/php-nginx
USER root
RUN apk add --no-cache php81-pdo php81-pdo_mysql
USER nobody
COPY doc /var/www/documents/
COPY src /var/www/src/
COPY vendor /var/www/vendor/
COPY . /var/www/html/
EXPOSE 8080/tcp
