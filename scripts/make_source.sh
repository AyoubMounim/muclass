#!/bin/bash

CLASS_NAME=$1
PRIVATE_HEADER_PATH=$2
CLASS_NAME_MARKER=CLASS_NAME
PRIVATE_HEADER_MARKER=PRIVATE_HEADER_PATH
TEMPLATE="templates/source_template.txt"

awk "{
    gsub(/$CLASS_NAME_MARKER/, \"$CLASS_NAME\");
    gsub(/$PRIVATE_HEADER_MARKER/, \"$PRIVATE_HEADER_PATH\");
    print
}" $TEMPLATE
