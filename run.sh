#!/bin/sh
sudo docker run -d -e "VIRTUAL_HOST=example.com" -e "MONGO_URL=mongodb://dbserver:27017/libreboard" \
  -e "ROOT_URL=http://example.com" -p 5555:5555 -it miurahr/libreboard
DPID=`sudo docker ps -q -l`
echo $DPID > /tmp/docker-libreboard.pid
sudo mv /tmp/docker-libreboard.pid /run/
