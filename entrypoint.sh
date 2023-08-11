#!/bin/sh

/usr/sbin/iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

/entrypoint.sh $@
