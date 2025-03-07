#!/bin/bash

# Color Definitions
Color_Off='\033[0m'       # Text Reset
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Cyan='\033[0;36m'         # Cyan
Purple='\033[0;35m'       # Purple
Blue='\033[0;34m'         # Blue
UWhite='\033[4;37m'       # Underlined White

# Function to check for required packages
function check_packages() {
    local packages=("zenity" "at" "xdotool" "enlightenment")
    local missing_packages=()

    for pkg in "${packages[@]}"; do
        if ! dpkg -s "$pkg" &> /dev/null; then
            missing_packages+=("$pkg")
        fi
    done

    if [ ${#missing_packages[@]} -ne 0 ]; then
        echo -e "$Red [!] The following packages are not installed: ${missing_packages[*]}$Color_Off"
        echo -e "$Green [!] Installing missing packages...$Color_Off"
        sudo apt install -y "${missing_packages[@]}" || { echo -e "$Red [!] Failed to install packages. Exiting...$Color_Off"; exit 1; }
    else
        echo -e "$Green [!] All prerequisites are installed.$Color_Off"
    fi
}

# Function to set up an alarm
function set_alarm() {
    read -p "[?] Enter the time period for the alarm (in seconds): " TIME
    read -p "[?] Enter the title for the alarm notification: " TITLE

    if ! [[ "$TIME" =~ ^[0-9]+$ ]]; then
        echo -e "$Red [!] Invalid time input. Please enter a positive integer.$Color_Off"
        return
    fi

    # Run the alarm in the background
    (
        sleep "$TIME"
        echo -e "$Green [!] Time's up for: $TITLE!$Color_Off"
        zenity --info --text "$TITLE"
    ) &
}

# Main script execution
clear
echo -e "$Purple\nWelcome to the Alarm Script!$Color_Off"
check_packages

# Allow the user to set multiple alarms
while true; do
    set_alarm
    read -p "[?] Do you want to set another alarm? (y/n): " ANOTHER
    if [[ "$ANOTHER" != "y" ]]; then
        break
    fi
done

# Wait for all background jobs to finish
wait
echo -e "$Green [!] All alarms have been set.$Color_Off"
