#!/bin/sh
set -x

ip flush dev eth0 #Remove the IP address auto-generated by Docker 
# Should we be thorough, we should also modify the /etc/hosts file (mais flemme)

ip r r default via 192.168.0.2

openvpn /data/client-combined.ovpn