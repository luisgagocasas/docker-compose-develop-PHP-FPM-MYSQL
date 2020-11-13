# docker-compose Develop in PHP-FPM and MYSQL

Example config to make PHP-FPM container work with Nginx.

### Increase virtual memory areas

```bash
sudo sysctl -w vm.max_map_count=262144
```

### Used software

- jwilder/nginx-proxy (Nginx Proxy)
- nginx for (pagespeed)
- php-fpm:7.3
- mysql:8.0.20
- mailhog (email local)
- sonarqube (evaluate code)
- memcached (cache)
- newrelic (monitoring)
- jenkins (automatización)
- phpmyadmin (MySQL administration)

### Config Host
```bash
patch: etc/hosts

127.0.1.1	arcux.local
127.0.1.1	mail.arcux.local
127.0.1.1	pma.arcux.local
127.0.1.1	jenkins.arcux.local
127.0.1.1	sonar.arcux.local
```

### Run project
```bash
docker-compose up -d
```

### LINKS

- WEBSITE: `http://arcux.local`
- MAIL: `http://mail.arcux.local`
- PHPMYADMIN: `http://pma.arcux.local`
- JENKINS: `http://jenkins.arcux.local`
- SONARQUBE: `http://sonar.arcux.local`
