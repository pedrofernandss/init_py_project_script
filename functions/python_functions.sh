#!/bin/bash

get_python() {
    if command -v python &> /dev/null; then
        echo "Python is installed. Current version: $(python --version)"
    else
        echo "Python is not installed"
    fi
}


install_python() {
    sudo apt-get update
    sudo apt install -y python3 python3-pip python3-venv
    echo "#### The latest python was successfully installed"
}

create_py_api_struct_from_template() {
    # Clona o repositório
    git clone https://github.com/pedrofernandss/template.git
    # Move os arquivos pra pasta mae pra ficar mais organizado
    mv -f template/* ./ 2>/dev/null
    #Exclui a pasta do repositório remoto de template
    rm -rf template
}

install_dependencies() {
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
}