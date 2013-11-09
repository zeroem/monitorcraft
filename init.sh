#!/bin/sh

set -e

wget -q -P ./roles/minecraft/files https://s3.amazonaws.com/Minecraft.Download/versions/1.7.2/minecraft_server.1.7.2.jar &
wget -q -P ./roles/logstash/files https://download.elasticsearch.org/logstash/logstash/logstash-1.2.2-flatjar.jar &
wget -q -P ./roles/redis/files wget http://download.redis.io/releases/redis-2.6.16.tar.gz &

cd base-box
./install.sh
