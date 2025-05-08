#!/bin/bash
source ./functions/git_functions.sh
source ./functions/python_functions.sh

echo "Which will be the name of your python project?"
echo "On the name, please do not use spaces! Instead, use _ (underline) or - (hífen)"
read -r project_name

echo "Ok, let's create your project repository"
