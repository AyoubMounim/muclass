#!/bin/bash

CLASS_NAME=$1
HEADER_NAME=$2
ROOT_DIR=$3

mkdir -p $ROOT_DIR/include/$HEADER_NAME
mkdir $ROOT_DIR/src

cd $HOME/mu_libs/mu_libs_c/muclass/scripts/

./make_header.sh $CLASS_NAME > "$ROOT_DIR/include/$HEADER_NAME/$HEADER_NAME.h"
./make_private_header.sh $CLASS_NAME $HEADER_NAME/"$HEADER_NAME.h" > $ROOT_DIR/src/"${HEADER_NAME}_private.h"
./make_source.sh $CLASS_NAME "${HEADER_NAME}_private.h"> $ROOT_DIR/src/"$HEADER_NAME.c"

