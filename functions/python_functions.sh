#!/bin/bash

get_python() {
    if command -v python &> /dev/null; then
        echo "Python is installed. Current version: $(python --version)"
    else
        echo "Python is not installed"
}


install_pyton() {
    sudo apt-get update
    sudo apt-get install -y python
    echo "The latest python was successfully installed"
}