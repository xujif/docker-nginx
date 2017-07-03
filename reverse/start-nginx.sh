#!/bin/sh
sed 's#\$BACKEND#'"$BACKEND"'/#' /etc/nginx/nginx.conf > /tmp/real_nginx.conf
nginx -g "daemon off;" -c /tmp/real_nginx.conf
