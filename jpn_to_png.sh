#!/bin/bash

caminho_imagens = imagens-livros/

for image in $@
do
    convert $caminho_imagens/$image.jpg $caminho_imagens/$image.png 
done
