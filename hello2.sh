#!/bin/bash
echo "Hello $*, you are using $0! Thank you :D" # o $0 printa o caminho e o nome do arquivo
echo $(basename $0) # aqui so printa o nome, pq o 'basename' eh executado com o parametro $0 e 'alimenta' a variavel sem nome '$' com o valor retornado
# alternativa para o '$(...)' anterior:
echo "Hello $*, you are using `basename $0`! Thank you :D"

nome="Irineu vc n sabe nem eu"
idade=17

echo "Nome: $nome; Idade: $idade"

array=(elem1 elem2 elem3)
echo "Um dos elementos do array eh ${array[1]}. O primeiro elemento eh $array" # pode ser '${array[0]}'

echo ${array[*]}
unset array[1] # unset array remove todos os elementos!
echo ${array[*]}

export nome #torna a variavel 'name' visivel a outros scripts!! variaveis 'exportadas' sao apenas copias, alteracoes feitas no outro arquivo nao serao refletidas na variavel original

./hello1.sh

cur_dir1=`pwd`
cur_dir2=$(pwd)

echo $cur_dir1
echo $cur_dir2

exit 0
