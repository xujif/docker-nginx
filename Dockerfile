FROM nginx
MAINTAINER xujif <i@xujif.com>

 
ADD nginx.conf /etc/nginx/nginx.conf
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
VOLUME ["/var/cache/nginx"]
# PORTS
EXPOSE 80
WORKDIR /opt/bin
CMD ["nginx", "-g", "daemon off;"]