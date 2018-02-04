#! /bin/bash
cd /e/Users/jim/test/pic
while true
do
fc="$(ls | wc -l)"
if [ $fc -gt 0 ];
then
FILES=/e/Users/jim/test/pic/*
for f in $FILES
do
/mingw64/bin/git add $f
/mingw64/bin/git commit -m "$(date +%H-%M-%S)"
/mingw64/bin/git remote add origin git@github.com:jim7762000/iii.git
/mingw64/bin/git push -u origin master
/mingw64/bin/git remote remove origin
done
fi;
rm -rf /e/Users/jim/test/pic/*
sleep 3
done