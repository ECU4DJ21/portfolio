#!/bin/bash

ip_info="$(./IpInfo.sh)"


addresses=$(echo "$ip_info" | sed -n '/IP Address: /p')

#format output

echo -e "The IP Addresses on this computer are: \n$addresses"