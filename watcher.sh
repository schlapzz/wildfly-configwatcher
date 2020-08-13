#!/bin/bash
echo 'start watching....'
while inotifywait -e modify /opt/wildfly/standalone/configuration/standalone.xml; do
  echo 'file change detected'
  /wildfly/bin/jboss-cli.sh --connect :reload 
done