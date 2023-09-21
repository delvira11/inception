FROM debian:buster

#instalar nginx y openssl para generar certificado SSL

RUN apt-get update && apt-get install -y nginx openssl

#Crear certificado para SSL con su duración de 365 dias y configurar nginx

RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt \
    -subj "/CN/delvira-.42.fr/C=ES/L=Malaga" 

#Copiar configuracion de nginx a la carpeta de configuracion de nginx del contenedor

COPY ./srcs/nginx.conf /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]

#A traves del puerto 443

EXPOSE 443