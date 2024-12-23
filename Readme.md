### Run docker image directly
```
docker run -d -p 8080:80 \  
-v $(pwd)/data:/var/www/rockin.local \  
-v $(pwd)/conf.d:/etc/nginx/conf.d \  
ubuntu_nginx
```

### Run via docker compose
```compose up```

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
