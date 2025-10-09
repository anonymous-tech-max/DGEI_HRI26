# Gaze Tracking System

A ROS2-based gaze tracking and visualization system with Dynamic Gaze Engagement Index (DGEI 2.0) calculation.

## Demo Video

**Note:** A demonstration video showing the visualization in action will be uploaded after the anonymization period. The video has been temporarily removed for this reason.

## Prerequisites

- Docker
- ROS2
- RVIZ

## Installation & Setup

### Step 1: Download Required Files

Download the necessary zip files from the following Google Drive folder into the `docker` folder:

[Download Files](https://drive.google.com/drive/folders/1MaFMmUtnsVl0zWa6dhrkTjsXA0s1UMa0)

### Step 2: Set Execution Permissions

Navigate to the folder containing `run_gaze_example.bash` and run:

```bash
chmod +x run_gaze_example.bash
```

### Step 3: Run the System

Execute the bash script from the same directory:

```bash
./run_gaze_example.bash
```

## Configuration

### RVIZ Setup

Configure your RVIZ interface to match the provided reference image (`RVIZ_setup.png`). If the visualization is not working as expected, you may need to adjust parameters in the launch file.

### Launch File Parameters

The main launch file is located at:
```
ros2 launch dgei_gaze dgei_gaze_tracking.launch
```

You can modify various parameters including:
- **Camera Index**: Adjust this parameter if you're using an external camera
- Other system parameters as needed for your setup

## Usage

### Calibration

To calibrate the system to a new optimal position, use the following service call:

```bash
ros2 service call /entropy_calculation dgei_interfaces/srv/EntropyCalculation "{calibration_time: 5.0, frames_required: 300, angle_tolerance: 10.0}"
```

**Parameters:**
- `calibration_time`: Duration for calibration in seconds
- `frames_required`: Number of frames needed for calibration
- `angle_tolerance`: Tolerance angle in degrees

## Customization

Feel free to edit the code and modify parameters according to your specific requirements. The system is designed to be flexible and adaptable to different use cases.

## Troubleshooting

If you encounter issues:
1. Verify that all zip files are correctly extracted in the `docker` folder
2. Check that RVIZ is configured according to `RVIZ_setup.png`
3. Adjust camera index in the launch file if using an external camera
4. Review and modify launch file parameters as needed

## License

MIT License

## Contact

To be added after the review period
