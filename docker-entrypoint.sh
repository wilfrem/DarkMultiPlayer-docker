#!/bin/bash

set -e

if [[ -d "/home/kerman/config" ]]; then
	cp /home/kerman/config/* /home/kerman/DMPServer/
	chown -R kerman:kerman /home/kerman/DMPServer/*
fi

/usr/bin/sudo -u kerman mono /home/kerman/DMPServer/DMPServer.exe