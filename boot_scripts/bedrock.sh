#!/bin/sh

echo "memory_limit set the value to -1 in php"
echo 'memory_limit = -1' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini

echo "bedrock: install"
BEDROCK_FOLDER = /var/www/html/bedrock
if [ ! -d "$BEDROCK_FOLDER" ];
  then
    echo "- change version composer"
    composer self-update --2
    echo "- install bedrock"
    composer create-project roots/bedrock

    echo "- install wp-cli"
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    echo 'wp() {' >> ~/.bashrc && \
    echo '/usr/local/bin/wp "$@" --allow-root' >> ~/.bashrc && \
    echo '}' >> ~/.bashrc

    echo "- install dotenv command"
    wp package install aaemnnosttv/wp-cli-dotenv-command:^2.0 --allow-root

    echo "- config .env to bedrock"
    cd bedrock
    wp dotenv set DB_NAME arcux --allow-root
    wp dotenv set DB_USER root --allow-root
    wp dotenv set DB_PASSWORD sunway --allow-root
    wp dotenv set DB_HOST mysql --allow-root
    wp dotenv set WP_HOME http://arcux.local --allow-root
    wp dotenv salts generate --allow-root

    echo "- bedrock to install and config project!!"
  else
    echo "- bedrock had already been installed!!"
fi
