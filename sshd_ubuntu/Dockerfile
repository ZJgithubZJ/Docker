FROM ubuntu:18.04
RUN apt-get update && apt-get install -y openssh-server && mkdir -p /var/run/sshd && mkdir -p /root/.ssh
RUN sed -ri 's/account    required     pam_nologin.so/#account    required     pam_nologin.so/g' /etc/pam.d/sshd
ADD authorized_keys /root/.ssh
ADD run.sh /
RUN chmod 755 /run.sh
EXPOSE 22
CMD ["/run.sh"]
