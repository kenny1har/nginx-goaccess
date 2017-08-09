#!/bin/bash
nohup http-server -p 8082 /app 2> foo.err < /dev/null &
{ zcat -f /var/log/nginx/*access* && tail -f /var/log/nginx/*access*.log; } | goaccess --port 8081 -o /app/index.html --real-time-html
