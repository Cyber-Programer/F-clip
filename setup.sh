#!/bin/bash

# Create the ~/bin directory if it doesn't exist
mkdir -p ~/bin

# Create the F-clip script with the necessary content
cp F-clip.py ~/bin/F-clip

# Make the script executable
chmod +x ~/bin/F-clip

# Check if ~/bin is in the PATH
if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
    echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
    echo "Added ~/bin to your PATH. Please run 'source ~/.bashrc' to refresh your terminal."
else
    echo "Setup complete. You can now use 'F-clip' from anywhere in the terminal."
fi