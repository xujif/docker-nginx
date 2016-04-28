#!/bin/sh
sed -i 's#\$DOCUMENT_ROOT#'"$DOCUMENT_ROOT"'/#' /etc/nginx/nginx.conf 
nginx -g "daemon off;" 