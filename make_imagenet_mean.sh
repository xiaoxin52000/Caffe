#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

EXAMPLE=examples/food
DATA=data/images
TOOLS=tools

$TOOLS/compute_image_mean $EXAMPLE/img_val_lmdb \
  $DATA/val_mean.binaryproto

echo "Done."
