#!/bin/bash

usage_exit() {
	echo "KSP DMP Server bootstrap" 1>&2
	echo "Usage: $0 [-t tag] [-v DMPServerFilesPath] " 1>&2
	exit 1
}
TAG=wilfrem/ksp-dmp
VOLUME=$(cd `dirname $0`; pwd)/DMPServerFiles
while getopts "t:v:h" OPT
do
	case $OPT in
		t) TAG=$OPTARG
				;;
		v) VOLUME=$(cd $(dirname $OPTARG) && pwd)/$(basename $OPTARG)
			;;
		h) usage_exit
			;;
		\?) usage_exit
			;;
	esac
done
UniverseFolder=$VOLUME/Universe
LogsFolder=$VOLUME/logs
#run docker container
sudo docker run -p 6702:6702 -v $UniverseFolder:/home/kerman/DMPServerApp/Universe -v $LogsFolder:/home/kerman/DMPServer/logs -i -t $TAG


