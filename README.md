# nginx-goaccess
NGINX realtime stats accessible via web

Port 80 for the web
Port 8081 for the data/realtime update

how to run
```
docker run --rm -d -it -p 80:80 -p 8081:8081 --name goaccess -v /var/log/nginx:/var/log/nginx kenny1har/goaccess
```
