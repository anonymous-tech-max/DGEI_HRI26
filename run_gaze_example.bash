#!/bin/bash

# Script to run ROS2 gaze tracking with Docker
# This script launches the DGEI gaze tracking node inside the Docker container

set -e  # Exit on any error

echo "Starting DGEI Gaze Tracking with Docker..."

# Change to the docker directory
cd "$(dirname "$0")/docker"

# Build the Docker image first
echo "Building Docker image..."
docker build -t gazedet-dev .

# Run the ROS2 launch command inside the Docker container in interactive mode
echo "Running gaze tracking..."
docker run --rm -it \
    --privileged \
    --network host \
    -e DISPLAY=${DISPLAY} \
    -e QT_X11_NO_MITSHM=1 \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v /dev/bus/usb:/dev/bus/usb \
    --device /dev/dri:/dev/dri \
    --shm-size 16g \
    --gpus all \
    gazedet-dev bash -c "
        source /opt/ros/humble/setup.bash && \
        source /home/vscode/dev/gaze_ws/install/setup.bash && \
        ros2 launch dgei_gaze dgei_gaze_tracking.launch
    "

echo "Gaze tracking session ended."