sed -e 's,${PUBLISHERS_CACHE_USER},'$PUBLISHERS_CACHE_USER',g' \
  -e 's,${PUBLISHERS_CACHE_PASSWORD},'$PUBLISHERS_CACHE_PASSWORD',g' \
    </users-template.acl >/usr/local/etc/redis/users.acl
