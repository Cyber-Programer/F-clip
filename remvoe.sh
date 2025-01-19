#!/bin/bash

# Remove the F-clip script if it exists
if [ -f ~/bin/F-clip ]; then
    rm ~/bin/F-clip
    echo "F-clip has been removed from ~/bin."
else
    echo "F-clip not found in ~/bin."
fi

# Check if ~/bin directory is empty and remove it if it is
if [ -d ~/bin ] && [ -z "$(ls -A ~/bin)" ]; then
    rmdir ~/bin
    echo "Removed empty ~/bin directory."
fi

# Remove the line that adds ~/bin to the PATH in ~/.bashrc
if grep -q 'export PATH="$HOME/bin:$PATH"' ~/.bashrc; then
    sed -i '/export PATH="$HOME\/bin:$PATH"/d' ~/.bashrc
    echo "Removed ~/bin from PATH in ~/.bashrc."
else
    echo "~/bin not found in PATH in ~/.bashrc."
fi

echo "Removal process complete. Please restart your terminal or run 'source ~/.bashrc' to apply changes."