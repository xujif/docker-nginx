FROM nginx
MAINTAINER xujif <i@xujif.com>
ADD nginx.conf /etc/nginx/nginx.conf
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
ENV DOCUMENT_ROOT /www

ENV LIMIT_CONN 2
ENV LIMIT_RATE 150K
ENV LIMIT_RATE_AFTER 1M

ADD start-nginx.sh /tmp/
EXPOSE 80
WORKDIR /tmp
CMD ["sh","/tmp/start-nginx.sh"]