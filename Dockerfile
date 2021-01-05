FROM redis

WORKDIR /
RUN mkdir /usr/local/etc/redis/

COPY users-template.acl users-template.acl
COPY preprocess.sh preprocess.sh

RUN chmod +x preprocess.sh
RUN sh preprocess.sh

COPY redis.conf /usr/local/etc/redis/redis.conf

RUN rm preprocess.sh users-template.acl

WORKDIR /data
