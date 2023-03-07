#!/bin/bash

$PROJECT_URL=https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Declarar um array
declare -a messagesLog

# adiciona mensagem na lista de mensagens
print(){
    messagesLog+=("$1")
}

# mostra todas as mensagens da lista de mensagens
logMessages(){
    echo "###################### Processo Finalizado ############################"
    
    for message in "${messagesLog[@]}" ; do
        echo "$message"
    done

    echo "Você já pode acessar a aplicação se não souber o IP utilize o comando 'ip a' para obter o ip!"
}

# Faz downloa do projeto
downloadProjectTo(){
    # Acessa diretório temporário
    cd $1

    # Clona Repositório
    wget $PROJECT_URL

    print "O projeto foi baixado em sua máquina no diretório $1"
    
}

# Instala todas as dependencias.
installDependencies(){
    # Atualizar sistemas
    apt install update -y

    # Instalar Apache
    apt install apache2 -y

    # Instalar unzip
    apt install unzip
    
    # instalar wget
    apt install wget

    print "Dependências instaladas com sucesso!"
    cls
}

normalizeApacheDirectory(){
    # Acessa o diretório do apache
    cd /var/www/html

    # Remove diretório gerado pela descompactação
    rm -rf linux-site-dio-main

    print "Diretório apache normalizado com sucesso!"
}

unZipProject(){
    unzip main.zip -d $1

    print "Descompressão finalizada com sucesso!"
}

copyFilesTo(){
    cp -r /var/www/html/linux-site-dio-main/* $1
    
    print "Arquivos copiados para o diretório $1"
}

main(){
    
    installDependencies
    downloadProjectTo /tmp
    unZipProject /var/www/html
    copyFilesTo /var/www/html/
    normalizeApacheDirectory 

    # limpando tela
    clear

    # Imprimir mensagens
    logMessages
}


main