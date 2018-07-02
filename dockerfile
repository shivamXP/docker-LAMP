FROM ubuntu:16.04
MAINTAINER Shivam Patel

RUN     apt-get update \
	&& apt-get install -y --no-install-recommends \
		apache2 php7.0 php7.0-mysql libapache2-mod-php7.0 \
	&& rm -r /var/lib/apt/lists/* \
	&& rm /var/www/html/index.html \
        && echo "ServerName localhost" >> /etc/apache2/httpd.conf \	
	&& echo "ServerName localhost" >> /etc/apache2/apache2.conf	
COPY    ./*  /var/www/html/	

CMD     ["apachectl", "-D", "FOREGROUND"]	

EXPOSE 80
