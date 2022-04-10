#base images
FROM ubuntu:16.04

#ruuning command image pada saat build image
RUN apt update && apt install apache2 -y

# copy index.html dari local ke container pada saat build images
COPY index.html /var/www/html

#running syntax pada saat run container
ENTRYPOINT "apachectl" "-DFOREGROUND"
