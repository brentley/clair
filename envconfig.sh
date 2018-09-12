#!/bin/sh

set -vx

echo Env:
printenv

echo 
echo

# read env variables and write the clair config file
cd /
cat /config.yaml.sample | sed -e "s/host=localhost/host=${PGDATABASE}/" -e "s/user=postgres/user=${PGUSER}/" > /etc/clair/config.yaml
