FROM mhart/alpine-iojs:3.0.0

RUN apk add --update nginx supervisor && rm -rf /var/cache/apk/*
RUN mkdir -p /tmp/nginx/client-body

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/ssl/nginx.crt /etc/nginx/ssl/nginx.crt
COPY nginx/ssl/nginx.key /etc/nginx/ssl/nginx.key
COPY server /src
COPY supervisord.conf /etc/supervisord.conf

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /src/log/node.log
RUN ln -sf /dev/stderr /src/log/node.err
RUN ln -sf /dev/stdout /src/log/nginx.log
RUN ln -sf /dev/stderr /src/log/nginx.err

WORKDIR /src
