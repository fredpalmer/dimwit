FROM dockerfile/nginx

MAINTAINER Daniel Paschke <paschdan@wirkaufens.de>

RUN apt-get update && apt-get install -y nginx-extras-dbg

RUN mkdir /mnt/media && chmod 777 /mnt/media

ADD nginx.conf /etc/nginx/sites-enabled/default

RUN sed -i /etc/nginx/nginx.conf -e 's:/var/log/nginx/access.log:/dev/stdout:'
RUN sed -i /etc/nginx/nginx.conf -e 's:/var/log/nginx/error.log:/dev/stdout:'

VOLUME /mnt/media
