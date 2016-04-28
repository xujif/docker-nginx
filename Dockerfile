FROM nginx
MAINTAINER xujif <i@xujif.com>
ADD nginx.conf /etc/nginx/nginx.conf
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
ENV DOCUMENT_ROOT /www
ADD nginx.conf /etc/nginx/nginx.conf
ADD start-nginx.sh /tmp/
VOLUME ["/var/cache/nginx"]
ENV DOCUMENT_ROOT /www
EXPOSE 80
WORKDIR /www
CMD ["sh","/tmp/start-nginx.sh"]