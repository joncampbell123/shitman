#!/bin/bash
#
# Copy to mounted CF card for testing.
# Presumably, the CF card is FAT16/FAT32 formatted with MS-DOS.
# 
# You should specify the name of a "shitman" folder on that CF card.
path=$1
if [[ -z "$path" ]]; then
    echo Please specify path to copy to
    exit 1
fi
if [[ !( -d $path ) ]]; then
    echo Path does not exist: $path
    exit 1
fi

cp -v -- *.gif *.fnt "$path/" || exit 1
cp -v dos86l/shitman.exe "$path/" || exit 1
cp -v dos386f/shitman.exe "$path/shitm32.exe" || exit 1
cp -v dos386f/dos4gw.exe "$path/" || exit 1

