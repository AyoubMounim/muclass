#!/bin/bash

CLASS_NAME=$1
PUBLIC_HEADER_PATH=$2
CLASS_NAME_MARKER=CLASS_NAME
PUBLIC_HEADER_MARKER=PUBLIC_HEADER_PATH
TEMPLATE="templates/private_header_template.txt"

cd $HOME/mu_libs/mu_libs_c/muclass/scripts/

awk "{
    gsub(/$CLASS_NAME_MARKER/, \"$CLASS_NAME\");
    gsub(/$PUBLIC_HEADER_MARKER/, \"$PUBLIC_HEADER_PATH\");
    print
}" $TEMPLATE

