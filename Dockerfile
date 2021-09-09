FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y pkg-config make gcc gdb lcov valgrind vim curl iputils-ping wget
RUN apt-get update && apt-get install -y autoconf automake libtool
RUN apt-get update && apt-get install -y libssl-dev libjansson-dev libcurl4-openssl-dev check
RUN apt-get update && apt-get install -y apache2 apache2-dev
RUN apt-get update && apt-get install -y libpcre3-dev zlib1g-dev
RUN apt-get update && apt-get install -y libapache2-mod-php libhiredis-dev
RUN apt-get update && apt-get install -y libapache2-mod-auth-mellon

RUN a2enmod ssl
RUN a2ensite default-ssl

RUN echo "/usr/sbin/apache2ctl start && tail -F /var/log/apache2/error.log" >> /root/run.sh
RUN chmod a+x /root/run.sh

RUN /usr/sbin/apache2ctl start

ADD index.php /var/www/html/

EXPOSE 443

ENTRYPOINT /root/run.sh
