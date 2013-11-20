#!/bin/sh

set -e

wget -q -P ./roles/minecraft/files https://s3.amazonaws.com/Minecraft.Download/versions/1.7.2/minecraft_server.1.7.2.jar &
wget -q -P ./roles/logstash/files https://download.elasticsearch.org/logstash/logstash/logstash-1.2.2-flatjar.jar &
wget -q -P ./roles/redis/files wget http://download.redis.io/releases/redis-2.6.16.tar.gz &
wget -q -P ./base-box http://aphyr.com/riemann/riemann_0.2.3_all.deb &

cd base-box
./install.sh
