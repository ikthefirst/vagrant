#!/bin/bash

echo "" | sudo tee -a /etc/hosts
echo "# Vagrant boxes" | sudo tee -a /etc/hosts
cat /synced/hosts/hosts | sudo tee -a /etc/hosts
