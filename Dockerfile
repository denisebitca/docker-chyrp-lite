FROM php:fpm-bullseye
WORKDIR /app
RUN apt update && apt install -y git nginx
RUN docker-php-ext-install pdo pdo_mysql
RUN git clone https://github.com/xenocrat/chyrp-lite .
RUN chown -R www-data:www-data /app
COPY chyrp.conf /etc/nginx/sites-enabled
RUN rm /etc/nginx/sites-enabled/default
COPY entrypoint /bin
RUN chmod +x /bin/entrypoint
EXPOSE 80
ENTRYPOINT ["/bin/entrypoint"]
