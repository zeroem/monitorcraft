#!/bin/sh

set -e

ROLE_DIR=./ansible/roles

wget -q -P $ROLE_DIR/minecraft/files https://s3.amazonaws.com/Minecraft.Download/versions/1.7.4/minecraft_server.1.7.4.jar &
wget -q -P $ROLE_DIR/logstash/files https://download.elasticsearch.org/logstash/logstash/logstash-1.2.2-flatjar.jar &
wget -q -P $ROLE_DIR/redis/files wget http://download.redis.io/releases/redis-2.8.0.tar.gz &
wget -q -P $ROLE_DIR/riemann/files http://aphyr.com/riemann/riemann_0.2.4_all.deb &

cd base-box
./install.sh
