#!/bin/sh
cp /etc/nginx/nginx.conf /tmp/real_nginx.conf
sed -i 's#\$DOCUMENT_ROOT#'"$DOCUMENT_ROOT"'/#' /tmp/real_nginx.conf
sed -i 's#\$FASTCGI_HTTPS#'"$FASTCGI_HTTPS"'#' /tmp/real_nginx.conf
nginx -g "daemon off;" -c /tmp/real_nginx.conf