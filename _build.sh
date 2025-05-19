#!/bin/bash

if [ -z "$1" ]; then
echo "== build only =="
else
echo "== remove and build =="
 rm -rf install/au_4d_radar/ build/au_4d_radar/ log/

 export AMENT_PREFIX_PATH=$(echo "$AMENT_PREFIX_PATH" | tr ':' '\n' | grep -v "install/au_4d_radar" | paste -sd:)
 export CMAKE_PREFIX_PATH=$(echo "$CMAKE_PREFIX_PATH" | tr ':' '\n' | grep -v "install/au_4d_radar" | paste -sd:)
fi

colcon build --cmake-args -DCMAKE_BUILD_TYPE=Debug --packages-select radar_msgs mon_msgs au_4d_radar tf_publisher_radar

