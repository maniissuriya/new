#
# The line below states we will base our new image on the Latest Official Centos 
FROM centos:centos7

#
# Identify the maintainer of an image
MAINTAINER My Name "mani@somecompany.com"


# Installing Docker and copying config files

RUN yum install -y epel-release > /dev/null 2>&1
RUN yum update -y /dev/null 2>&1
RUN yum install -y nginx
RUN mkdir /var/www

ADD ./config/ /var/www

RUN cp /var/www/nginx/my* /etc/nginx/conf.d/

RUN chmod 644 /etc/nginx/conf.d/my*


RUN cp -f /var/www/nginx/nginx.conf /etc/nginx/


#
# Expose port 80" 
EXPOSE 80

#
# Last is the actual command to start up NGINX within our Container

ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
