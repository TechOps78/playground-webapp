FROM ubuntu
MAINTAINER dsotle78 (thomas.leste@gmail.com)
RUN apt-get update && DEBIAN_FRONTEND=nointeractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
