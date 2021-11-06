#!/bin/bash
git add .
([ $# -eq 2 ] && git commit -m "$1" && git push origin $2) || (echo "Missing argument(s)!" ; exit 1)
exit 0
