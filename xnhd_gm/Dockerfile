FROM centos:centos6.8
MAINTAINER zz1210683327jj (ZJOK2019@outlook.com)
RUN yum install -y epel-release && \
    yum install -y wget redis unzip supervisor gcc make pcre-devel zlib-devel openssl-devel libxslt-devel GeoIP-devel && \
    sed -i 's/# requirepass foobared/requirepass 123456789/' /etc/redis.conf && \
    cd /root && wget http://nginx.org/download/nginx-1.14.2.tar.gz && \
    tar -zxvf nginx-1.14.2.tar.gz && \
    rm -rf nginx-1.14.2.tar.gz && \
    cd nginx-1.14.2 && \
    ./configure --prefix=/usr/local/nginx --with-pcre --with-file-aio --with-http_ssl_module && \
    make && make install && \
    groupadd nginx && useradd -g nginx nginx && chown -R nginx:nginx /usr/local/nginx && \
    ln -s /usr/local/nginx/sbin/nginx /usr/local/bin/nginx && \
    echo  'Asia/Shanghai' > /etc/timezone
ADD install_php.zip /install_php.zip
RUN unzip /install_php.zip && \
    cd /install && chmod 755 install_web_env.sh && sh install_web_env.sh && \
    rm -rf /var/cache/dnf/* && \
    yum clean all
ADD supervisord.conf /etc/supervisord.conf
WORKDIR ~
EXPOSE 80
CMD ["/usr/bin/supervisord"]
