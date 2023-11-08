#!/bin/bash

CLASS_NAME=$1
CLASS_NAME_MARKER=CLASS_NAME
TEMPLATE="templates/header_template.txt"

awk "{gsub(/$CLASS_NAME_MARKER/, \"$CLASS_NAME\"); print}" $TEMPLATE

