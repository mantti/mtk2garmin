#!/bin/bash
set -e
date
time_stamp=$(date +%Y-%m-%d)
mkdir -p "/opt/mtk2garmin_build/output/${time_stamp}"

./convert_maps.sh > "/opt/mtk2garmin_build/output/${time_stamp}/build_log.txt" 2>&1
cd /opt/mtk2garmin_build/mtk2garmin/
python3 publish_map.py "/opt/mtk2garmin_build/output/${time_stamp}" > "/opt/mtk2garmin_build/output/${time_stamp}/publish_log.txt" 2>&1
echo "Done"