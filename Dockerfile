FROM jwilder/docker-gen:latest

ADD https://raw.githubusercontent.com/jwilder/nginx-proxy/master/nginx.tmpl /etc/docker-gen/templates/nginx.tmpl

#RUN sed -i -e"s/access.log vhost/access.log json/" /etc/docker-gen/templates/nginx.tmpl
