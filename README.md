

# Alarm Script

## Overview

`alarm_script.sh` is a simple and efficient Bash script that allows users to set multiple alarms with customizable time periods and notification titles. The script utilizes background processing to enable concurrent alarms, ensuring that multiple timers can run simultaneously without blocking the user interface.

## Features

- **Set Multiple Alarms**: Users can set as many alarms as they want, each with its own time period and notification title.
- **Background Processing**: Alarms run in the background, allowing for concurrent execution.
- **Package Management**: The script checks for required packages (`zenity`, `at`, `xdotool`, and `enlightenment`) and installs them if they are missing.
- **User -Friendly Interface**: Prompts for user input and provides feedback on the status of alarms.

## Prerequisites

Before running the script, ensure that the following packages are installed on your system:

- `zenity`: For displaying graphical notifications.
- `at`: For scheduling tasks.
- `xdotool`: For simulating keyboard input and mouse activity.
- `enlightenment`: A window manager that may be required for certain graphical operations.

The script will automatically check for these packages and prompt for installation if they are not found.

## Installation

1. **Clone or Download the Script**:
   You can clone the repository or download the script directly.

   ```bash
   git clone 
   ```

2. **Make the Script Executable**:
   Run the following command to make the script executable:

   ```bash
   chmod +x alarm_script.sh
   ```

## Usage

1. **Run the Script**:
   Execute the script in your terminal:

   ```bash
   ./alarm_script.sh
   ```

2. **Set Alarms**:
   - Follow the prompts to enter the time period for the alarm (in seconds) and the title for the notification.
   - After setting an alarm, you will be asked if you want to set another alarm. Enter `y` to continue or `n` to stop.

3. **Receive Notifications**:
   When the time for an alarm expires, a notification will appear on your screen with the specified title.

## Example

```bash
$ ./alarm_script.sh
Welcome to the Alarm Script!
[?] Enter the time period for the alarm (in seconds): 10
[?] Enter the title for the alarm notification: Time to take a break!
Waiting for 10 seconds...
[!] Time's up for: Time to take a break!
```

## Contributing

Contributions are welcome! If you have suggestions for improvements or new features, feel free to open an issue or submit a pull request.


---
