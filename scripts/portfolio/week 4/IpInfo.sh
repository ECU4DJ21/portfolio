#!/bin/bash

#filter information, keep ip addresses on this computer, change format

#change from inet to IP Address
net_info="$(ifconfig)"


#echo net_info into sed
addresses=$(echo "$net_info" | sed -n '/inet / {
      s/inet/IP Address:/
      s/netmask/\n\t\tSubnet Mask:/
      s/broadcast/\n\t\tBroadcast Address:/
      p
}')

# keys -n = no output, p = print (basically only printing commands), \n = newline, \t = tab

#format output
echo -e "The IP Addresses on this computer are: \n$addresses"
