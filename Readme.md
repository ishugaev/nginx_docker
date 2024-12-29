### Run docker image directly
```
docker run -d -p 8080:80 -p 8081:443 \  
-v $(pwd)/data:/var/www/yoursite \  
-v $(pwd)/conf.d:/etc/nginx/conf.d \  
ubuntu_nginx
```
### Checking load balancers
```
docker exec -it yourcontainerid /bin/bash
cd /var/www/yoursite/proxy
php -S 127.0.0.1:8001 & php -S 127.0.0.1:8002 & php -S 127.0.0.1:8003
```
Navigate to /roundrobin, /lessconn, /ip_hash, /weighted endpoints to check

### Useful commands
```nginx -s reload``` - reload nginx  
```nginx -s stop``` - stop nginx  
```nginx -s quit``` - quit nginx  
```nginx -t``` - test nginx configuration  
```nginx -v``` - show nginx version  
```nginx -V``` - show nginx version and configure options  
```nginx -t -c /path/to/config``` - test nginx configuration file  
```nginx -T``` - show nginx configuration  
```lsof -i :80 -i :443 | grep nginx``` - show nginx processes  
```apt-install net-tools``` - install net-tools  
```netstat -plan | grep nginx``` - show nginx ports  
```tail -f /var/logs/nginx/*.log``` - show nginx logs  
