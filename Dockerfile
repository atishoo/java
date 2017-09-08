FROM atishoo/java:8
MAINTAINER Atishoo

COPY epel-release-7-10.noarch.rpm /root/

WORKDIR /root

RUN rpm -ivh epel-release-7-10.noarch.rpm \
    && yum makecache \
    && yum install -y file aria2 which hostname nc \
    && yum clean all \
    && rm -rf epel-release-7-10.noarch.rpm
