FROM busybox

MAINTAINER Chris Fordham <chris@fordham-nagy.id.au>

ENV LISTEN_ADDRESS=:6379
ENV SENTINEL_ADDRESS=sentinel:26379
ENV REDIS_MASTER_NAME=master

COPY bin/redis-sentinel-proxy /usr/local/bin/redis-sentinel-proxy

WORKDIR /usr/local/bin

CMD redis-sentinel-proxy \
      -listen $LISTEN_ADDRESS \
      -sentinel $SENTINEL_ADDRESS \
      -master $REDIS_MASTER_NAME
