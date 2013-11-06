#!/bin/sh

git clone https://github.com/eggsby/ansible-supervisor /tmp/ansible-supervisor

cp -r /tmp/ansible-supervisor/supervise ./roles
cp -r /tmp/ansible-supervisor/supervisord ./roles

wget -q -P ./roles/minecraft/files https://s3.amazonaws.com/Minecraft.Download/versions/1.7.2/minecraft_server.1.7.2.jar
