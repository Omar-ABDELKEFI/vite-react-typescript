#!/bin/bash

# Define the text to add to the other file
text_to_add="#!/bin/bash
npm run lint:fix
npm run format
exit 0
"

# Specify the target file where you want to add the text
target_file=".git/hooks/pre-commit"

# Check if the target file already exists
if [ -f "$target_file" ]; then
    # Append the text to the existing file
    echo "$text_to_add" > "$target_file"
    echo "Added pre-commit hook to $target_file"
else
    # If the file doesn't exist, create it and add the text
    echo "$text_to_add" > "$target_file"
    chmod +x "$target_file"  # Make the script executable
    echo "Created and added pre-commit hook to $target_file"
fi
