#!/bin/bash
echo "You are using `basename $0`!"

test -z $1 || echo "Hello $1!"
echo $*
[ $# -gt 1 ] && test -n $2 && test $1 = $2 && echo "Os parametros sao iguais!" ; shift
#'test' e '[ expressao_testada ]' sao 2 notacoes diferentes para o mesmo comando!
echo $*

exit 0
