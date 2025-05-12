#!/bin/bash

# source install/local_setup.bash

if [ -z "$1" ]; then
echo "== build only =="
else
echo "== remove and build =="
 rm -rf install/au_4d_radar/ build/au_4d_radar/
fi

colcon build --packages-select radar_msgs mon_msgs au_4d_radar tf_publisher_radar