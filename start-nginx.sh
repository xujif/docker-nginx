#!/bin/sh
sed 's#\$DOCUMENT_ROOT#'"$DOCUMENT_ROOT"'/#' /etc/nginx/nginx.conf > /etc/nginx/real_nginx.conf
nginx -g "daemon off;" -c /etc/nginx/real_nginx.conf