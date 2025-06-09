#!/bin/bash

gnome-terminal -- bash -c "source install/local_setup.bash; ros2 launch tf_publisher_radar tf_publisher.launch.py; exec bash"
#gnome-terminal -- bash -c "source install/local_setup.bash; ros2 launch au_4d_radar listener.launch.py; exec bash"

files=(debug-log*)
if [ -e "${files[0]}" ]; then
    rm debug-log*
fi

files2=(core.*)
if [ -e "${files2[0]}" ]; then
    rm core.*
fi

ulimit -c unlimited

source install/local_setup.bash
ros2 launch au_4d_radar radar.launch.py 2>&1 | tee "debug-log-$(date +%F-%H%M%S).txt"
