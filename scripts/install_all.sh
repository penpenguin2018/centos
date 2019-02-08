#!/bin/sh
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as Root" 1>&2
	exit 1
fi

sh nvidia.sh
sh utility.sh
sh code.sh
sh djv.sh
sh mkv.sh
sh rmbeep.sh
sh trans.sh
sh pip.sh
sh ffmpeg.sh
sh openimageio.sh
sh mediainfo.sh
sh ocio_config.sh
sh devtools.sh
