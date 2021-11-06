#!/bin/bash
git add .
([ $# -eq 2 ] && git commit -m "$1" && git push origin $2 && exit 0) || ( ([ $? -eq 1 ] && echo "Commit error!") || ([ $? -eq 129 ] && echo "Missing argument(s)!") ) ; exit 1
