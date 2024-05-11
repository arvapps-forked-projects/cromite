#!/bin/bash

FOLDER=$1
SCRIPT_FOLDER="$(dirname "$0")"

OUTPUT="$SCRIPT_FOLDER"/../docs/PATCHES.md
test -f $OUTPUT && rm $OUTPUT

for filename in "$FOLDER"/*.patch; do
    bash $SCRIPT_FOLDER/extract-patch-data.sh $filename >>$OUTPUT
done

sort -k1 -t"|" -o $OUTPUT $OUTPUT

sed -i '1s/^/| Patch | Message |\n/' $OUTPUT
sed -i '2s/^/|--------|--------|\n/' $OUTPUT
