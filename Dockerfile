sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $PWD/ssl/nginx.key -out $PWD/ssl/nginx.crt


docker run -d -p 9090:443 -p 7070:80 -v $PWD/log:/var/log/nginx -v $PWD/ssl:/etc/ssl/certs -v $PWD/private:/etc/ssl/private -v $PWD/config:/etc/nginx --name nginx-server nginx
