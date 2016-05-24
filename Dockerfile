FROM jwilder/docker-gen:0.7.1

ADD nginx.tmpl /etc/docker-gen/templates/nginx.tmpl

VOLUME /etc/nginx/certs

#RUN sed -i -e"s/access.log vhost/access.log json/" /etc/docker-gen/templates/nginx.tmpl

CMD [ "-notify-sighup", "nginx", "-watch", "-only-exposed", "/etc/docker-gen/templates/nginx.tmpl", "/etc/nginx/conf.d/default.conf" ]
