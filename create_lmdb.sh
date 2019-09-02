#usr/bin/env sh

MY=examples/food

echo "Create train lmdb..."
rm -rf $MY/img_train_lmdb
tools/convert_imageset \
--shuffle \
--resize_height=256 \
--resize_width=256 \
/Users/xin_mac/caffe/data/images/ \
$MY/train.txt \
$MY/img_train_lmdb

echo "Create val lmdb..."
rm -rf $MY/img_val_lmdb
tools/convert_imageset \
--shuffle \
--resize_width=256 \
--resize_height=256 \
/Users/xin_mac/caffe/data/images/ \
$MY/val.txt \
$MY/img_val_lmdb

echo "All Done..."

