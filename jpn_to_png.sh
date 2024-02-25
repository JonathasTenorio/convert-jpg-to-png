#!/bin/bash

cd imagens-livros/

if [ ! -d png ]
then 
    mkdir png
fi


for image in *.jpg
do
    local imagem_sem_extensao = $(ls $imagem | awk -F . '{ print $1 }')
    convert $image png/$imagem_sem_extensao.png 
done


if [ $? -eq 0]
then 
    echo "Os arquivos foram convertidos com sucesso!"
else
    echo "Os arquivos não foram convertidos com sucesso!"
fi