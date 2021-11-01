#!/bin/bash
echo "Hello $*, you are using $0! Thank you :D" # o $0 printa o caminho e o nome do arquivo
echo $(basename $0) # aqui so printa o nome, pq o 'basename' eh executado com o parametro $0 e 'alimenta' a variavel sem nome '$' com o valor retornado
# alternativa para o '$(...)' anterior:
echo "Hello $*, you are using `basename $0`! Thank you :D"
exit 0
