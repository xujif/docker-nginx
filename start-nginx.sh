#!/bin/sh
sed -i 's#\$DOCUMENT_ROOT#'"$DOCUMENT_ROOT"'/#' /etc/nginx/nginx.conf
sed -i 's#\$FASTCGI_HTTPS#'"$FASTCGI_HTTPS"'#' /etc/nginx/nginx.conf
nginx -g "daemon off;" -c /etc/nginx/nginx.conf