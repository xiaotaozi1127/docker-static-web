# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER hui tao "htao@thoughtworks.com"
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container' > /usr/share/nginx/html/index.html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80