FROM trafex/php-nginx
USER root
RUN apk add --no-cache php81-pdo-php81-pdo_mysql
USER nobody
COPY doc /var/www/documents/
COPY scr /var/www/src/
COPY vendor /var/www/vendor/
COPY web /var/www/html/
EXPOSE 8080/tcp
