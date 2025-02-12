#!/usr/bin/bash

#have bash stop if errors

set -e

# set parameters

LOCAL_CSV=$1

NAME=$2

#removing blanks

echo "removing blanks and renaming file"

# tr can remove spaces
/usr/bin/cat "$LOCAL_CSV" | tr -s '\n' > "$NAME" ||exit 1

echo "done! clean file named $NAME"
