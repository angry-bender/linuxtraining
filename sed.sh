sed -e 's/o/#/' text.txt
sed -e 's/o/#/2' text.txt
sed -e 's/o/#/g' text.txt
sed -e '1s/o/#/g' text.txt
sed -e '1,4s/o/#/g' text.txt

