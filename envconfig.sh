#!/bin/sh

set -vx

# read env variables and write the clair config file
cd /
cat /config.yaml.sample | sed -e "s/host=localhost/host=${DatabaseEndpointAddress}/" -e "s/user=postgres/user=${DatabaseMasterUsername}/" > /etc/clair/config.yaml
