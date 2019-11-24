#!/bin/bash
service redis start &
service php-fpm start &
/usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf
