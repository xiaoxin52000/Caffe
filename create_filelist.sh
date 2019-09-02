#usr/bin/env sh
DATA=data/images

MY=examples/food

echo "Create train.txt..."
rm -rf $MY/train.txt
for i in 0 1
do
find $DATA/train -name $i*.jpg | cut -d '/' -f3-6 |sed "s/$/ $i/">>$MY/train.txt
done

echo "Create val.txt..."
rm -rf $MY/val.txt
for i in 0 1
do
find $DATA/val -name $i*.jpg | cut -d '/' -f3-6 |sed "s/$/ $i/">>$MY/val.txt
done
echo "All done"
