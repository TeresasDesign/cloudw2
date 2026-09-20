FROM nginxinc/nginx-unprivileged:alpine

# Prepísanie HLAVNEJ konfigurácie Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Kopírovanie webových súborov
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY assignments /usr/share/nginx/html/assignments/

EXPOSE 8080