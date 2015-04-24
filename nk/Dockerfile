FROM agasper/ubuntu-opencv
MAINTAINER Agasper

RUN apt-get install -q -y libxml2-dev libxslt1-dev libffi-dev libssl-dev \
      libjpeg-dev libfreetype6 libfreetype6-dev zlib1g-dev \
      libpng-dev libtiff-dev

RUN easy_install -U pip && \
  pip install PIL --allow-external PIL --allow-unverified PIL && \
  pip install MySQL-python Django==1.8.1 beautifulsoup4 lxml pymorphy python-memcached \
        pyOpenSSL ndg-httpsclient pyasn1 && \
  pip install requests --upgrade && \
  pip install urllib3 --upgrade


RUN ln -s /usr/lib/`uname -i`-linux-gnu/libfreetype.so /usr/lib/ && \
    ln -s /usr/lib/`uname -i`-linux-gnu/libjpeg.so /usr/lib/ && \
    ln -s /usr/lib/`uname -i`-linux-gnu/libz.so /usr/lib/ && \
    ln -s /usr/include/freetype2 /usr/include/freetype



