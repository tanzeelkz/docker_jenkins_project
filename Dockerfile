FROM ubuntu:latest
MAINTAINER tanzeelkx@gmail.com
RUN apt install -y httpd \ 
  zip \ 
  unzip
ADD https:https://www.free-css.com/assets/files/free-css-templates/download/page295/applight.zip /var/www/html
WORKDIR /var/www/html
RUN unzip applight.zip
RUN cp -rvf applight.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
