FROM nginx:alpine
MAINTAINER xujif <i@xujif.com>

COPY nginx.conf /etc/nginx/nginx.conf

COPY start-nginx.sh /tmp/start-nginx.sh



WORKDIR /tmp
CMD ["sh","/tmp/start-nginx.sh"]
