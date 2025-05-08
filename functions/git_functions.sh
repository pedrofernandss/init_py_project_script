#!/bin/bash

get_git() {
    if command -v git &> /dev/null; then
        echo "Git is installed. Current version: $(git --version)"
    else
        echo "Git is not installed"
}

install_git() {
    sudo apt-get update
    sudo apt-get install -y git
    echo "Git was sucessfully installed"
}
