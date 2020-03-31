#!/bin/sh

envsubst /default.tmpl > /etc/nginx/conf.d/default.conf

exec $@
