#!/bin/sh

git clone https://github.com/eggsby/ansible-supervisor /tmp/ansible-supervisor

cp -r /tmp/ansible-supervisor/supervise ./roles
cp -r /tmp/ansible-supervisor/supervisord ./roles
