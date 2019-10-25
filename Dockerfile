 FROM ubuntu:latest

 RUN apt-get update

 # Nginx 
 RUN apt-get install -y nginx

 ADD [ "./index.html", "/var/www/html/" ]

 EXPOSE 80

 ENTRYPOINT nginx -g 'daemon off;'
