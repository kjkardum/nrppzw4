openssl req -new -newkey rsa:2048 -nodes -keyout server.key -out server.csr -days 365 \
  -subj "/C=HR/ST=Zagreb/L=Zagreb/O=FER/OU=NRPPZW/CN=Karlo Josip Kardum"

openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
