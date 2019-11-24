#!/bin/bash

#创建目录
mkdir -p /app/sdo/nginx/p-wwwroot
mkdir -p /app/sdo/nginx/wwwroot
mkdir -p /app/sdo/repo
mkdir -p /app/sdo/script

#安装php和nginx
yum install -y unzip
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
php_v=php56w
yum -y install ${php_v} || exit 2
yum -y install ${php_v}-cli ${php_v}-gd ${php_v}-imap ${php_v}-ldap ${php_v}-mysqlnd ${php_v}-odbc ${php_v}-pear ${php_v}-xml ${php_v}-xmlrpc ${php_v}-mbstring ${php_v}-mcrypt ${php_v}-pdo ${php_v}-snmp ${php_v}-soap ${php_v}-tidy ${php_v}-common ${php_v}-devel ${php_v}-fpm ${php_v}-pecl-memcached ${php_v}-opcache || exit 2

#安装protobuf
unzip php-protobuf-master.zip -d . || exit 2
cd php-protobuf-master || exit 2
phpize || exit 2
./configure || exit 2
make || exit 2
make install || exit 2
echo -e '\nextension=protobuf.so' >> /etc/php.ini

#php
cd /install
mv /etc/php-fpm.d/www.conf /etc/php-fpm.d/www.conf.bak
cp web/www.conf /etc/php-fpm.d/nginx.conf

# xhprof
pecl config-set preferred_state beta
pecl install xhprof
echo -e '\nextension=xhprof.so' >> /etc/php.ini
echo -e '\nxhprof.output_dir=/var/log/xhprof' >> /etc/php.ini
mkdir -p /var/log/xhprof
chown -R apache /var/log/xhprof
