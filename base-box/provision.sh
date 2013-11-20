#!/bin/bash

set -e

apt-get update
apt-get -y --fix-missing install \
  python-pip python-virtualenv python-apt python-pycurl python-dev \
  python-setuptools python-setuptools-git python-pkg-resources git \
  openjdk-7-jre-headless libcairo2-dev python-cairo python-rrdtool \
  memcached nodejs collectd

dpkg -i /vagrant/riemann_0.2.3_all.deb

apt-get -y remove --auto-remove puppet


# clean up collectd data
service collectd stop
rm -rf /var/lib/collectd/rrd

echo "UseDNS no" >> /etc/ssh/sshd_config

echo "vagrant ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant
