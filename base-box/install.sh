#!/bin/bash

vagrant up --provider lxc
vagrant package
vagrant box add ubuntu13-monitorcraft-base package.box --force --provider lxc 
#vagrant destroy --force
