#!/bin/bash

get_git() {
    if command -v git &> /dev/null; then
        echo "Git is installed. Current version: $(git --version)"
    else
        echo "Git is not installed"
}

