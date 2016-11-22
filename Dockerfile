FROM nginx:alpine

MAINTAINER Ondrej Prochazka <docker-maintain@ond.cz>

ADD nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
