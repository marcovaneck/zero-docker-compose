#!/bin/bash -e


fluentd -d /var/run/fluentd.pid

nginx -g "daemon off;"

