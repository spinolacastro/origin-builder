FROM centos:centos7

MAINTAINER diego.castro@getupcloud.com

RUN  yum install -y epel-release && \
     yum install -y go git tito nodejs npm && \
     npm install -g azure-cli --no-optional && \
     yum clean -y all
