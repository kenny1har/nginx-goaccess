#!/bin/bash
nohup http-server-with-auth /app -p 80 -g --username goaccess --password goaccess 2> foo.err < /dev/null &
while true
do
  { zcat -f /var/log/nginx/*access* && tail -f /var/log/nginx/*access*.log; } | goaccess --port 8081 -o /app/index.html --real-time-html
  sleep 2
done
