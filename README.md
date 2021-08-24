# NGINX File Server

![Docker Pulls](https://img.shields.io/docker/pulls/cocomac/nginx-file-server) ![GitHub last commit](https://img.shields.io/github/last-commit/coconutmacaroon/nginx-file-server)

A simple file server using NGINX

## Using the image

> If you forget to mount a volume with files to serve, the container will instead serve a single file named `IMPORTANT` informing you that you failed to mount a volume.

```
$ docker run -p <some host port>:80 --volume /absolute/path/to/directory/containing/files/to/serve:/files -it cocomac/nginx-file-server
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
```

## Updating the Docker image

> This is just a note to myself. This repo is (sadly) not connected to the one on Docker Hub, so they will have to be kept in sync manually.

1. Build the image with `docker build -t cocomac/nginx-file-server:latest .`
2. Push the image to Docker Hub with `docker push -t cocomac/nginx-file-server:latest`
