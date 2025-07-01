FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf.template

EXPOSE 8085

CMD ["/bin/sh", "-c", "envsubst '$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"] 