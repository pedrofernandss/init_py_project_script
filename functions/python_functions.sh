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

create_py_structure_from_template() {
    # Clona o repositório
    git clone https://github.com/pedrofernandss/template.git
    # Move os arquivos pra pasta mae pra ficar mais organizado
    mv -f template/* ./ 2>/dev/null
    #Exclui a pasta do repositório remoto de template
    rm -rf template
}

install_dependencies() {
    python -m venv venv
    python venv/bin/activate
    pip install -r requirements.xt
}