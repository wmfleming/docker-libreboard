#!/bin/bash

if [ -e /run/docker-libreboard.pid ]; then
  DPID=`cat /run/docker-libreboard.pid`
else
  #DPID=`sudo docker ps -q -l`
  exit 1
fi

sudo docker stop $DPID
