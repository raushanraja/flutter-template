#!/bin/bash

FILES_AND_DIRECTORIES=(
    "l10n.yaml"
    "assets"
    "fonts"
    "lib"
    "pubspec.yaml"
)

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: ./copy.sh <source> <destination>"
    exit 1
fi

SOURCE=$1
DESTINATION=$2

# Check if the source directory exists
if [ ! -d "$SOURCE" ]; then
    echo "Source directory does not exist"
    exit 1
fi

# Check if the destination directory exists
# If not, create it
if [ ! -d "$DESTINATION" ]; then
    echo "Destination directory does not exist. Creating it..."
    mkdir -p "$DESTINATION"
fi

# Loop through the files and directories and copy them to the destination
for ITEM in "${FILES_AND_DIRECTORIES[@]}"; do
    if [ -e "$SOURCE/$ITEM" ]; then
        echo "Copying $ITEM from $SOURCE to $DESTINATION..."
        cp -r "$SOURCE/$ITEM" "$DESTINATION"
    else
        echo "$ITEM does not exist in $SOURCE"
    fi
done


# Upadate the pubspec.yaml file with Project Name, log this message


echo "Copy operation completed."
echo ""
echo "Update pubspec.yaml file with Project Name..."
echo ""
