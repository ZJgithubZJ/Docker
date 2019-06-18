FROM sshd:ubuntu
MAINTAINER ZJ (ZJOK2019@outlook.com)
ENV DEBIAN_FRONTEND noninteractive
RUN echo "Asia/Shanghai" >> /etc/timezone
RUN apt-get install -yq --no-install-recommends wget pwgen ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENV CATALINA_HOME /tomcat
ENV JAVA_HOME /jdk
ADD apache-tomcat-8.5.41 /tomcat
ADD jdk /jdk
ADD create_tomcat_admin.sh /create_tomcat_admin.sh
ADD run.sh /run.sh
RUN chmod 755 /*.sh
RUN chmod 755 /tomcat/bin/*.sh
EXPOSE 8080
CMD ["/run.sh"]
