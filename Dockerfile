FROM nginx
LABEL authors="kjkardum"

COPY lab4 /usr/share/nginx/html/lab4

COPY server.crt /etc/nginx/certs/server.crt
COPY server.key /etc/nginx/certs/server.key

COPY nginx.conf /etc/nginx/nginx.conf


CMD ["nginx-debug", "-c", "/etc/nginx/nginx.conf", "-g", "daemon off;"]
