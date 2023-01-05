FROM nginx

WORKDIR /var/www/html

RUN apt update && apt install -y git

COPY ./build_files/chyrp.conf /etc/nginx/conf.d/chyrp.conf
RUN rm -rf /etc/nginx/conf.d/default.conf

COPY ./build_files/entrypoint /bin/entrypoint
RUN chmod +x /bin/entrypoint

EXPOSE 80

ENTRYPOINT ["entrypoint"]
