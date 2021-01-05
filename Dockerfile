FROM redis

WORKDIR /
RUN mkdir /usr/local/etc/redis/

COPY redis-template.conf redis-template.conf
COPY preprocess.sh preprocess.sh

RUN chmod +x preprocess.sh
RUN sh preprocess.sh

RUN rm preprocess.sh redis-template.conf


WORKDIR /data
