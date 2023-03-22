#!/bin/bash

set -e 

if [ -z $1 -o -z $2 ]; then
   echo "usage: $0 <$image> <file_path> [ <dest_path> ]"
   exit 1
fi

IMAGE=$1
FILE=$2
DEST=$(basename $FILE)

if [ "$3" ]; then
   DEST=$3
fi

container_id=$(docker create "$IMAGE" sh)
docker cp "$container_id:$FILE" "$DEST"
docker rm "$container_id" 1> /dev/null 2>&1
ls -l $DEST
