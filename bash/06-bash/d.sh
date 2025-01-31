#!/bin/bash

#usage = ./d.sh $line_number $hostname $mac_address $ip_address
dhcp_file="archivo.conf"
line_number="$1"
hostname="$2"
mac_address="$3"
ip_address="$4"

if grep -q "$hostname" "$dhcp_file"; then
    echo "Hostname already exists"
    exit 1
fi

if grep -q "$mac_address" "$dhcp_file"; then
    echo "MAC address already exists"
    exit 1
fi

if grep -q "$ip_address" "$dhcp_file"; then
    echo "IP address already exists"
    exit 1
fi

sed -i "${line_number}s/$/ $hostname $mac_address $ip_address\n/" "$dhcp_file"

echo "Everything is piola"
