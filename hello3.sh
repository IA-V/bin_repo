#!/bin/bash

echo -n "Hello `basename $0`! May I ask your name: "
read
echo "Hello $REPLY!"

read -p "Enter your name again, please: " name # '-p' permite passar um texto a ser exibido quando o 'read' eh executado; 'name' eh o nome da variavel que recebera a entrada do usuario - esse argumento eh opcional, caso n seja determinado o nome da variavel, sera usada a variavel '$REPLY' por padrao
echo "Hello again, $name!"

read -sn1 -p "Press any key to exit." # '-s' oculta o caractere digitado
echo ""

exit 0
