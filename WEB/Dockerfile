FROM ubuntu:latest

RUN apt update && apt upgrade -y && DEBIAN_FRONTEND=noninteractive apt install -y apache2

RUN a2enmod ssl

COPY kevvan.ephec-ti.be.conf /etc/apache2/sites-available
COPY intranet.kevvan.ephec-ti.be.conf /etc/apache2/sites-available
COPY b2b.kevvan.ephec-ti.be.conf /etc/apache2/sites-available

RUN ln -s /etc/apache2/sites-available/kevvan.ephec-ti.be.conf /etc/apache2/sites-enabled
RUN ln -s /etc/apache2/sites-available/intranet.kevvan.ephec-ti.be.conf /etc/apache2/sites-enabled
RUN ln -s /etc/apache2/sites-available/b2b.kevvan.ephec-ti.be.conf /etc/apache2/sites-enabled


RUN mkdir /var/www/kevvan.ephec-ti.be
RUN mkdir /var/www/b2b.kevvan.ephec-ti.be
RUN mkdir /var/www/intranet.kevvan.ephec-ti.be

COPY kevvan.ephec-ti.be.html /var/www/kevvan.ephec-ti.be/index.html
COPY b2b.kevvan.ephec-ti.be.html /var/www/b2b.kevvan.ephec-ti.be/index.html
COPY intranet.kevvan.ephec-ti.be.html /var/www/intranet.kevvan.ephec-ti.be/index.html

EXPOSE 80

CMD apachectl -DFOREGROUND