FROM agasper/ubuntu-base
MAINTAINER Agasper

RUN easy_install -U pip && \
  pip install cython git+git://github.com/surfly/gevent.git#egg=gevent && \
  pip install MySQL-python Django==1.8.3 python-memcached \
        django-gevent-deploy uwsgi && \
  apt-get clean && \
  rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

