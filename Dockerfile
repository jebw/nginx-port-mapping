FROM nginx
RUN cat /etc/nginx/conf.d/default.conf | sed 's/listen       80;/listen $PORT;/' > /default.tmpl
COPY ./docker-entrypoint.sh /
ENTRYPOINT /docker-entrypoint.sh
