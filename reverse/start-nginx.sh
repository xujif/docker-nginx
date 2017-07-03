#!/bin/sh
sed 's#\$BACKEND#'"$BACKEND"'#' /etc/nginx/nginx.conf | sed 's#\$PROXY_HOST#'"$PROXY_HOST"'#' >/tmp/real_nginx.conf
nginx -g "daemon off;" -c /tmp/real_nginx.conf
