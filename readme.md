# Nginx-Node

nginx and node.js in the same container

## Prerequisites

* [docker](https://docs.docker.com/installation/mac)
* [docker compose](https://docs.docker.com/compose/install)

## Setup

```
sudo sh -c "echo '127.0.0.1 app.example.com' >> /etc/hosts"
docker-compose up
curl https://app.example.com -k
docker exec -it nginxnode_server_1 sh
tail -f /var/log/nginx/*

[error] 6#0: *11 connect() failed (111: Connection refused) while connecting to upstream, client: 172.17.42.1, server: app.example.com, request: "GET / HTTP/1.1", upstream: "http://[::1]:3000/", host: "app.example.com"
[error] 6#0: *11 connect() failed (111: Connection refused) while connecting to upstream, client: 172.17.42.1, server: app.example.com, request: "GET / HTTP/1.1", upstream: "http://127.0.0.1:3000/", host: "app.example.com
```
