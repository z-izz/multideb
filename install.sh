#!/bin/bash

sudo echo "zinstall v1.0.2"

if [ "$1" == "-u" ]; then
    for file in *; do
        if [ "$file" != "$(basename $0)" ]; then
            sudo rm "/bin/$file"
        fi
    done
else 
    for file in *; do
        if [ "$file" != "$(basename $0)" ]; then
            sudo cp "$file" /bin
        fi
    done
fi