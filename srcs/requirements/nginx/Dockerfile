FROM debian:buster

RUN apt-get upgrade -y && apt-get update -y

RUN apt-get install nginx -y
RUN apt-get install openssl -y 

RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/CN/delvira-.42.fr/C=ES/L=Malaga"


COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

