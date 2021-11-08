#!/bin/bash
if [ $# -ne 2 ] ; then
    echo "Missing argument(s)!"
    exit 1
else
    git add .
    git commit -m "$1"
    if [ $? -eq 0 ] || [ $? -eq 1 ] ; then
        git push origin $2
    fi
fi
exit 0
