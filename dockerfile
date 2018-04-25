FROM debian:jessie

RUN \
    apt-get update && \
    apt-get -y install vsftpd

RUN mkdir -p /var/run/vsftpd/empty
RUN useradd ftpsecure

CMD ["/usr/sbin/vsftpd"]
