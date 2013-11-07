#!/bin/sh

wget -q -P ./roles/minecraft/files https://s3.amazonaws.com/Minecraft.Download/versions/1.7.2/minecraft_server.1.7.2.jar
wget -q -P ./roles/logstash/files https://download.elasticsearch.org/logstash/logstash/logstash-1.2.2-flatjar.jar
