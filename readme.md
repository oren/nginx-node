# Nginx-Node

nginx and node.js in the same container

## Prerequisites

* [docker](https://docs.docker.com/installation/mac)
* [docker compose](https://docs.docker.com/compose/install)

## Setup

    sudo sh -c "echo '127.0.0.1 app.example.com' >> /etc/hosts"
    docker-compose up
    tail -f server/log/node.log
    curl https://app.example.com -k
    =>
    Hello World


