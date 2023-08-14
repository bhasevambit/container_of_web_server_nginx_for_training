# --- Base Image pull from DockerHub ---
FROM nginx:latest

# --- OS Package Update ---
RUN apt update

# --- OS Timezone Setting ---
RUN apt install -y tzdata
ENV TZ=Asia/Tokyo

# OS Package Install
RUN apt install -y \
    wget \ 
    git

# --- Copy Nginx Configuration files ---
# General Settings
# COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# uWSGI Settings
# COPY ./nginx/uwsgi_params /etc/nginx/uwsgi_params

# SCGI Settings
# COPY .nginx/scgi_params /etc/nginx/scgi_params

# FastCGI Settings
# COPY ./nginx/fastcgi_params /etc/nginx/fastcgi_params

# MIME Type and Extension Settings
# COPY ./nginx/mime.types /etc/nginx/mime.types

# Virtual Server Settings
COPY ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

# Domain Settings
# COPY ./nginx/sites-available/default /etc/nginx/sites-available/default

# --- Copy HTML Contents ---
COPY ./src/index.html /var/www/index.html
