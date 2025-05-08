#!/bin/bash
source ./functions/git_functions.sh
source ./functions/python_functions.sh

echo "Which will be the name of your python project?"
echo "On the name, please do not use spaces! Instead, use _ (underline) or - (hífen)"
read -r project_name

echo "Ok, let's create your project repository"

if ! get_git; then
    install_git
    echo "What are your name and your most usual email?"
    read -r name email
    configure_git "$name" "$email"

mkdir "$project_name"
cd "$project_name"

git init 

if ! get_python; then
    install_python

create_py_structure_from_template