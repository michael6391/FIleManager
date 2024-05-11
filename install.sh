#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$@" >/dev/null 2>&1
}

echo "Checking for Homebrew installation..."
if command_exists brew; then
    echo "Homebrew is installed."
else
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # Check if Homebrew installation was successful
    if command_exists brew; then
        echo "Homebrew installed successfully."
    else
        echo "Failed to install Homebrew. Please check your internet connection or permissions."
        exit 1
    fi
fi

echo "Checking for Unison installation..."
if command_exists unison; then
    echo "Unison is already installed."
else
    echo "Unison not found. Installing Unison using Homebrew..."
    brew install unison
    # Check if Unison installation was successful
    if command_exists unison; then
        echo "Unison installed successfully."
    else
        echo "Failed to install Unison. Please check your Homebrew setup or try again."
        exit 1
    fi
fi

echo "Installation script completed successfully."
