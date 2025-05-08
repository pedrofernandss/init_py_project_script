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
    echo "Git was successfully installed"
}

configure_git() {
    local name = "$1"
    local email = "$2"

    git config --global user.name "$name"
    git config --global user.email "$email"

    echo "Git configured with success!"
}

initiate_git() {
    git init
}