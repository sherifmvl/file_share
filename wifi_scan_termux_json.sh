#!/bin/bash

# Ask the user for the filename
echo -n "Enter the filename to save the output: "
read filename

# Add timestamp to the filename and append .txt
timestamp=$(date +"%d_%m_%y_%H_%M")
filename_with_timestamp="${filename}_${timestamp}.txt"

index=1
first_entry=true

# Signal handler for Control+C (SIGINT)
trap 'echo -e "\n]" >> "$filename_with_timestamp"; echo "File closed successfully."; exit 0' SIGINT

echo "["  >> "$filename_with_timestamp"

# Run the wifi scan every 5 seconds and save output to the specified file
while true; do
    echo -en "\n\nPress Enter to take reading."
    read
    # Capture the current timestamp
    current_time=$(date)

    # Run the wifi scan and filter for 3rd floor data (with color in the terminal output)
    wifi_scan=$(termux-wifi-scaninfo | jq --color-output '[.[] | select(.ssid | contains("FTTH")) | {ssid, frequency_mhz, rssi}]')

    # Print the output in the terminal with color
    echo "$current_time"
    echo "$wifi_scan"
    echo "Index : $index"

    # If it's not the first entry, add a comma before adding the next object
    if [ "$first_entry" = false ]; then
        sed -i '$ s/$/,/' "$filename_with_timestamp"
    fi

    # Save the output (both timestamp and scan data) to the specified file (strip color codes for saving)
    echo -en "{\n\"index\":$index,\n\"ts\":\"$current_time\",\n\"readings\":" >> "$filename_with_timestamp"
    echo "$wifi_scan" | sed -r "s/\x1B\[[0-9;]*[mK]//g" >> "$filename_with_timestamp"
    echo -en "\n}" >> "$filename_with_timestamp"

    # After the first entry, change the flag to indicate that subsequent entries are no longer the first
    first_entry=false

    # Increment the index
    index=$((index+1))
done