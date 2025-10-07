Step one, download these zip files into the docker folder

https://drive.google.com/drive/folders/1MaFMmUtnsVl0zWa6dhrkTjsXA0s1UMa0

go to the folder of run_gaze_example.bash, run 'chmod +x run_gaze_example.bash'

then run ./run_gaze_example.bash from the folder holding said file

Please make your RVIZ look like the photo (RVIZ_setup.png), if not working there are some parameters to adjust in the roslaunch file
ros2 launch dgei_gaze dgei_gaze_tracking.launch. You can edit the camera index if an external camera is being used.Feel free to edit code and modify eetc

during use can calibrate to a new optimial position with service call things (with frame) - ros2 service call /entropy_calculation dgei_interfaces/srv/EntropyCalculation "{calibration_time: 5.0, frames_required: 300, angle_tolerance: 10.0}"


