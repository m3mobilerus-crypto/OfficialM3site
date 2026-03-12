FROM nginx:alpine
RUN apk add --no-cache gettext
COPY nginx.conf /etc/nginx/nginx.conf.template
CMD sh -c "envsubst '\$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"
