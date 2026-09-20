FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY assignments /usr/share/nginx/html/assignments/
COPY nginx.conf /etc/nginx/nginx.conf

RUN chgrp -R 0 /usr/share/nginx/html /etc/nginx \
    && chmod -R g=u /usr/share/nginx/html /etc/nginx

EXPOSE 8080