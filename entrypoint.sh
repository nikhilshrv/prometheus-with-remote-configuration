#!/bin/sh
set -e

rm /etc/prometheus/prometheus.yml
if [[ -z $CONFIG_LOCATION ]]; then
  echo "CONFIG_LOCATION environment variable must be set"
  exit 1
fi

wget -q -P /etc/prometheus $CONFIG_LOCATION

/bin/prometheus $@
