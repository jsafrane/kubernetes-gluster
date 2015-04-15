FROM fedora:21
MAINTAINER Jan Safranek, jsafrane@redhat.com
EXPOSE 24007/tcp 24008/tcp 49152/tcp

RUN yum install glusterfs-server attr hostname openssh-server -y
ADD init.sh /
ADD index.html /vol/
ENTRYPOINT ["/init.sh"]
