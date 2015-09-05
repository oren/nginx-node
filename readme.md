# Nginx-Node

nginx and node.js in the same container

## Prerequisites

* [docker](https://docs.docker.com/installation/mac)
* [docker compose](https://docs.docker.com/compose/install)

## Setup

    sudo sh -c "echo '127.0.0.1 app.example.com' >> /etc/hosts"
    docker-compose up
    curl https://app.example.com -k
    curl: (35) Unknown SSL protocol error in connection to app.example.com:443

