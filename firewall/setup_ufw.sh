#!/bin/sh

## Firewall to close incoming connections from the Internet and allow outgoing ones
## make sure you've installed ufw before running this script: $ sudo apt install ufw | check config:$ sudo ufw status verbose | disable: $ sudo ufw disable
## This script is only meant to setup a basic configuration to allow SSH, HTTPS and HTTP incoming


ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow 80/tcp
ufw allow 443/tcp
ufw enable
