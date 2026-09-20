FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY assignments /usr/share/nginx/html/assignments/
COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/cache/nginx /var/run \
    && chgrp -R 0 /var/cache/nginx /var/run /usr/share/nginx/html /etc/nginx \
    && chmod -R g=u /var/cache/nginx /var/run /usr/share/nginx/html /etc/nginx

EXPOSE 8080