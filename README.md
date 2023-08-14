# Container of Nginx Web Server for Training

This repository is Container of Nginx Web Server for training.

## Usage

### Docker container build

`docker build -t container_web_server_nginx .`

### Docker container run

`docker run --name container_web_server_nginx --rm -d -p 8080:8080 container_web_server_nginx`

### Docker container stop and remove

`docker stop container_web_server_nginx`

### Docker image remove

`docker image rm container_web_server_nginx`
