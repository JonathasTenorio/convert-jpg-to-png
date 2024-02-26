#!/bin/bash

converte_imagem(){
    cd imagens-livros/ # Entra no diretório imagens-livros

    if [ ! -d png ] # verifíca se o diretório png não existe
    then 
        mkdir png # cria o diretório png
    fi

    for image in *.jpg # itera sobre os arquivos com extensão jpg
    do
        local imagem_sem_extensao=$(ls $image | awk -F. '{ print $1 }') # recebe o nome do arquivo e armazena o nome sem a extensão
        convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png #converte o arquivo para png e armazena dentro do diretorio png
    done
    }

converte_imagem 2>erros_conversao.txt # Chama a função e armazena os erros em um arquivo chamado erros_conversao.txt

if [ $? -eq 0 ] #verifica o resultado da execução da função
then
    echo "Conversão realizada com sucesso" # Não houve erros, resultado igual a 0
else
    echo "Houve uma falha no processo de conversão" # Houve erros, resultado foi igual a 1
fi