#!/bin/bash

gnome-terminal -- bash -c "source install/local_setup.bash; ros2 launch tf_publisher_radar tf_publisher.launch.py; exec bash"
#gnome-terminal -- bash -c "source install/local_setup.bash; ros2 launch au_4d_radar listener.launch.py; exec bash"

source install/local_setup.bash
rm log*
ros2 launch au_4d_radar radar.launch.py 2>&1 | tee "log-$(date +%F-%H%M%S).txt"
