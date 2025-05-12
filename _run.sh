#!/bin/bash

gnome-terminal -- bash -c "source install/local_setup.bash; ros2 launch tf_publisher_radar tf_publisher.launch.py; exec bash"

source install/local_setup.bash
ros2 launch au_4d_radar run_radar.launch.py
