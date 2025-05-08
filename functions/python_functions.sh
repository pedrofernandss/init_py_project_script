#!/bin/bash

get_python() {
    if command -v python &> /dev/null; then
        echo "Python is installed. Current version: $(python --version)"
    else
        echo "Python is not installed"
}
