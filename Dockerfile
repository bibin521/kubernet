FROM  centos:7
MAINTAINER vikashashoke@gmail.com
RUN yum install unzip -y \
RUN yum install -y httpd \
 zip\
unzip
ADD https://www.tooplate.com/zip-templates/2133_moso_interior.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip 2133_moso_interior
RUN cp -rvf 2133_moso_interior/* .
RUN rm -rf 2133_moso_interior 2133_moso_interior
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
