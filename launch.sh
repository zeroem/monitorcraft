#!/bin/sh

set -e

# These boxes recieve data from other boxes and should be
# running before anything else
vagrant up redis
vagrant up graphite

# start up everything else
vagrant up
