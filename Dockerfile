FROM centos:centos7

MAINTAINER Diego Castro <diego.castro@getupcloud.com>

RUN  yum install -y epel-release && \
     yum install -y go git tito createrepo python-pip && \
     pip install awscli && \
     yum clean -y all

ADD root /

USER 1000

ENTRYPOINT ["container-entrypoint"]
CMD ["run"]