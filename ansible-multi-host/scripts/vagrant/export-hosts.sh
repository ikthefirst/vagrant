#!/bin/bash

ipaddress=$(hostname -I | awk '{print $2}')
hostname=$(hostnamectl | grep 'hostname' | awk '{print $3}' | sed 's/://')

echo $ipaddress	$hostname.test	$hostname >> $1