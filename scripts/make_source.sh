#!/bin/bash

CLASS_NAME=$1
PRIVATE_HEADER_PATH=$2
CLASS_NAME_MARKER=CLASS_NAME
PRIVATE_HEADER_MARKER=PRIVATE_HEADER_PATH
TEMPLATE="templates/source_template.txt"

cd $HOME/mu_libs/mu_libs_c/muclass/scripts/

awk "{
    gsub(/$CLASS_NAME_MARKER/, \"$CLASS_NAME\");
    gsub(/$PRIVATE_HEADER_MARKER/, \"$PRIVATE_HEADER_PATH\");
    print
}" $TEMPLATE

