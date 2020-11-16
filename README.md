# docker-compose PHP-FPM and MYSQL

Example config to make PHP-FPM container work with Nginx.

### Increase virtual memory areas

```bash
sudo sysctl -w vm.max_map_count=262144
```

### Used software

- [jwilder/nginx-proxy (Nginx Proxy)](https://hub.docker.com/r/jwilder/nginx-proxy)
- [nginx for (pagespeed)](https://hub.docker.com/r/crunchgeek/nginx-pagespeed)
- [php-fpm:7.3](https://hub.docker.com/r/crunchgeek/php-fpm)
- [mysql](https://hub.docker.com/_/mysql)
- [mailhog (email local)](https://hub.docker.com/r/mailhog/mailhog)
- [sonarqube (evaluate code)](https://hub.docker.com/_/sonarqube)
- [memcached (cache)](https://hub.docker.com/_/memcached)
- [newrelic (monitoring)](https://hub.docker.com/r/newrelic/infrastructure)
- [jenkins (automatización)](https://hub.docker.com/_/jenkins)
- [phpmyadmin (MySQL administration)](https://hub.docker.com/_/phpmyadmin)

### Config Host (Added lines finish file)
```bash
Patch Linux: etc/hosts
Patch Windows: C:/Windows/System32/drivers/etc

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

### OTHER LINKS

- SPEED ADMIN: `http://arcux.local/pagespeed_admin`
- NEWRELIC: `https://newrelic.com/`
