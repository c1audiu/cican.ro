#!/bin/bash
if ping -q -c 1 -W 5 192.168.88.1 >/dev/null;
then
 logger "connection with vpn.cican.ro is OK"
else
 logger "connection with vpn.cican.ro is NOK"
 /etc/init.d/openvpn restart
fi
