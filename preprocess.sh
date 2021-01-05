sed -e 's,${PUBLISHERS_CACHE_PASSWORD},'$PUBLISHERS_CACHE_PASSWORD',g' \
    </redis-template.conf >/usr/local/etc/redis/redis.conf
