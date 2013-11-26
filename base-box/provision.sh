#!/bin/bash

set -e

apt-get update
apt-get -y --fix-missing install \
  python-pip python-virtualenv python-apt python-pycurl python-dev \
  python-setuptools python-setuptools-git python-pkg-resources git \
  openjdk-7-jre-headless openjdk-7-jdk collectd

apt-get -y remove --auto-remove puppet

# clean up collectd data
service collectd stop
rm -rf /var/lib/collectd/rrd

echo "UseDNS no" >> /etc/ssh/sshd_config

# work around for the vagrant-lxc boxes not having appropriate sudoers permissions for vagrant
echo "vagrant ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant
