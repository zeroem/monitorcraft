#!/bin/sh

set -e

# These boxes recieve data from other boxes and should be
# running before anything else
vagrant up graphite logstash-redis-broker

# start up everything else
vagrant up
