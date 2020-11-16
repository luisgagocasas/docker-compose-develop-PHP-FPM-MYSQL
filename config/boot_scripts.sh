#!/bin/sh

echo "bedrock: install"

BEDROCK_FOLDER=/var/www/html/bedrock
if [ ! -d "$BEDROCK_FOLDER" ];
  then
    composer self-update --2
    composer create-project roots/bedrock


    echo "- install bedrock!!"
  else
    echo "- bedrock is install!!"
fi


# for package; do
#   dpkg -s "$package" >/dev/null 2>&1 && {
#     echo "$package is installed."
#   } || {
#     sudo apt-get install $package
#   }
# done