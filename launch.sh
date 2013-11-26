#!/bin/sh

set -e

vagrant up riemann

# These boxes recieve data from other boxes and should be
# running before anything else
vagrant up redis graphite

# start up everything else
vagrant up
