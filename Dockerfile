FROM nginx

EXPOSE 80
EXPOSE 443

COPY ./private /etc/nginx/certs
COPY default.conf /etc/nginx/conf.d
