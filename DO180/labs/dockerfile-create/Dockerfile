FROM ubi7/ubi:7.7
MAINTAINER Vivek Singh<vivek.singh@ksolves.com>
LABEL description="A custm apache containerbased on ubi 7"
RUN yum install -y httpd && \
    yum clean all
RUN echo "Hello from Dockerfile" > /var/www/html/index.html
EXPOSE 80
CMD ["httpd","-D", "FOREGROUND"]



