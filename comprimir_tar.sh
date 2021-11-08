#!/bin/bash
read -p "tar -> t \\ gz -> g \\ bz2 -> b: " tipo

read -p "File name: " nome
if [ -n $nome ] ; then
    if [ $tipo = "t" ]; then
        comando="-cvf $nome.tar $*"
    elif [ $tipo = "g" ]; then
        comando="-czvf $nome.tar.gz $*"
    elif [ $tipo = "b" ]; then
        comando="-cjvf $nome.tar.bz2 $*"
    fi
else
    echo "Name not specified!"
    exit 1
fi
tar $comando
exit 0
