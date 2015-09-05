FROM mhart/alpine-iojs:3.0.0

RUN apk add --update nginx && rm -rf /var/cache/apk/*
RUN mkdir -p /tmp/nginx/client-body

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/ssl/nginx.crt /etc/nginx/ssl/nginx.crt
COPY nginx/ssl/nginx.key /etc/nginx/ssl/nginx.key
COPY server /src

WORKDIR /src
