FROM nginx:alpine

MAINTAINER Ondrej Prochazka <docker-maintain@ond.cz>

ADD \
 internal.conf \
 route.conf \
 nginx.conf \
 security.conf \
\
 /etc/nginx/


ADD 401.html favicon.ico /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
