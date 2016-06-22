FROM nodesource/centos7:4.4.5

MAINTAINER Tobias Gerschner <tobias.gerschner@gmail.com>

RUN yum -y install --setopt=tsflags=nodocs epel-release wget unzip uuid less bzip2 && \
    yum -y update && \
    yum -y reinstall glibc-common && \
    yum clean all

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV NODE_ENV dev

RUN echo 'LANG="en_US.UTF-8"' > /etc/locale.conf

RUN adduser -U -m node_user

CMD [ "/bin/bash" ]
