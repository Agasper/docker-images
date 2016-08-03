FROM agasper/ubuntu-base
MAINTAINER Agasper


RUN apt-get update && apt-get install -q -y libxml2-dev libxslt1-dev libffi-dev libssl-dev \
      libjpeg-dev libfreetype6 libfreetype6-dev zlib1g-dev \
      libpng-dev libtiff-dev

RUN ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib && \
    ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so /usr/lib && \
    ln -s /usr/lib/x86_64-linux-gnu/libz.so /usr/lib && \
    ln -s /usr/include/freetype2 /usr/include/freetype

RUN easy_install -U pip && \
  pip install cython git+git://github.com/surfly/gevent.git#egg=gevent && \
  pip install MySQL-python Django==1.9.7 python-memcached lxml python-dateutil requests Pillow \
        django-gevent-deploy uwsgi

RUN apt-get clean && \
  rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*