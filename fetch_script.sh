#!/usr/bin/bash

set -e

#fetch the remote bundle
URL=$1

echo "fetching remote bundle" 

/usr/bin/curl -o remote-data.tar.gz $URL || exit 1

echo "success curl fetch"

#decompress bundle

echo "decompressing bundle..."

/usr/bin/tar -xzvf remote-data.tar.gz || exit 1

echo "sucessful decompress"

#find tsv files
TSV_FILE=$(find . -type f -name "*data*.tsv" | head -n 1)

#convert for tsv to csv

echo "converting from tsv to csv" 

/usr/bin/tr '\t' ',' <"$TSV_FILE"> remote-data.csv || exit 1 

echo "successfully converted from tsv to csv  - file is named remote-data.csv"

echo "done!"
