#!/bin/sh
cp /etc/nginx/nginx.conf /etc/nginx/real_nginx.conf
sed -i 's#\$DOCUMENT_ROOT#'"$DOCUMENT_ROOT"'/#' /etc/nginx/real_nginx.conf
sed -i 's#\$FASTCGI_HTTPS#'"$FASTCGI_HTTPS"'#' /etc/nginx/real_nginx.conf
nginx -g "daemon off;" -c /etc/nginx/real_nginx.conf