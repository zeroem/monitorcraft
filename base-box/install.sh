#!/bin/bash

vagrant up --provider lxc
vagrant package
vagrant box add ubuntu13-monitorcraft-base package.box --force --provider lxc 

# Hack to deal with using a pre 0.7.0 box with a 0.7.0+ box
cp ~/.vagrant.d/gems/gems/vagrant-lxc*/boxes/common/lxc-template ~/.vagrant.d/boxes/ubuntu13-monitorcraft-base/lxc/

#vagrant destroy --force
