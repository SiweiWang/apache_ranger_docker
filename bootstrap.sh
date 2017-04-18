#!/bin/bash
set -xe

cd /opt/ranger_home/ranger-0.7.0-admin

mysql -h db -uroot -ppassword < /opt/ranger_home/ranger-0.7.0-admin/ranger.sql

./setup.sh

ranger-admin start

# Stream the logs to standout
tail -f logfile