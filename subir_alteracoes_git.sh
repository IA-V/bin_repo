#!/bin/bash
[ $# -eq 2 ] || echo "Missing argument(s)!"  || exit 1
git add .
git commit -m "$1" && git push origin $2
exit 0
