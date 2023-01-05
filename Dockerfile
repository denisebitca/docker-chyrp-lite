FROM nginx

WORKDIR /var/www/html

RUN apt update && apt install -y git

COPY ./build_files/chyrp.conf /etc/nginx/conf.d/default.conf

COPY ./build_files/entrypoint /bin/entrypoint
RUN chmod +x /bin/entrypoint

COPY ./build_files/upgrade /bin/upgrade
RUN chmod +x /bin/upgrade

EXPOSE 80

ENTRYPOINT ["entrypoint"]
