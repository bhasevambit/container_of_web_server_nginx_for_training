FROM nginx:latest

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./src/index.html /var/www/index.html
