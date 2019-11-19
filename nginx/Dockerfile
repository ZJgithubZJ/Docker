FROM zz1210683327jj/sshd:ubuntu
MAINTAINER zz1210683327jj (ZJOK2019@outlook.com)
RUN apt-get update && apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/* && \
    echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
    chown -R www-data:www-data /var/lib/nginx
ADD test.conf /etc/nginx/conf.d/test.conf
ADD run.sh /run.sh
RUN chmod 755 /run.sh && echo  'Asia/Shanghai' > /etc/timezone
VOLUME ["/etc/nginx/sites-enabled","/etc/nginx/certs","/etc/nginx/conf.d","/var/log/nginx"]
WORKDIR /etc/nginx
EXPOSE 80
EXPOSE 443
CMD ["/run.sh"]
