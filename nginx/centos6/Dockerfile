FROM centos:centos6.8
MAINTAINER zz1210683327jj (ZJOK2019@outlook.com)
RUN yum install -y wget && \
    wget http://mirrors.aliyun.com/repo/Centos-6.repo -O /etc/yum.repos.d/centos.repo && \
    yum install -y gcc make pcre-devel zlib-devel openssl-devel libxslt-devel GeoIP-devel && \
    wget http://nginx.org/download/nginx-1.14.2.tar.gz && \
    tar -zxvf nginx-1.14.2.tar.gz && \
    rm -rf nginx-1.14.2.tar.gz && \
    cd nginx-1.14.2 && \
    ./configure --prefix=/usr/local/nginx --with-pcre --with-file-aio --with-http_ssl_module && \
    make && make install && \
    rm -rf /var/cache/dnf/* && \
    groupadd nginx && useradd -g nginx nginx && chown -R nginx:nginx /usr/local/nginx && \
    yum clean all
#ADD test.conf /etc/nginx/conf.d/test.conf
ADD run.sh /run.sh
RUN chmod 755 /run.sh && echo  'Asia/Shanghai' > /etc/timezone
#VOLUME ["/etc/nginx/sites-enabled","/etc/nginx/certs","/etc/nginx/","/var/log/nginx"]
WORKDIR /usr/local/nginx
EXPOSE 80
CMD ["/run.sh"]
