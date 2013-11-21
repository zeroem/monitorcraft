#!/bin/bash

set -e

BOX_NAME=monitorcraft-base

rm -f package.box
vagrant up --provider lxc
vagrant package
vagrant box add $BOX_NAME package.box --force --provider lxc 

# Hack to deal with using a pre 0.7.0 box with a 0.7.0+ box
cp ~/.vagrant.d/gems/gems/vagrant-lxc*/boxes/common/lxc-template ~/.vagrant.d/boxes/$BOX_NAME/lxc/

#vagrant destroy --force
