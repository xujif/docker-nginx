cp /etc/nginx/nginx.conf /etc/nginx/real_nginx.conf
sed -i 's#\$DEST_DOMAIN#'"$DEST_DOMAIN"'/#' /etc/nginx/real_nginx.conf
nginx -g "daemon off;" -c /etc/nginx/real_nginx.conf
