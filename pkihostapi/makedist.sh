#!/bin/sh

TODAY=`date +%Y%m%d`
NAME=javacardsign-$TODAY

mkdir $NAME

cp -r lib files $NAME

mkdir $NAME/applet

cp ../pkiapplet/bin/net/sourceforge/javacardsign/applet/javacard/applet.cap $NAME/applet

mkdir $NAME/doc

cp doc/pkidoc.pdf $NAME/doc

cp -r README.txt lgpl*.txt pkihost.bat pkihost.sh $NAME

sed --in-place 's/$/\r/' $NAME/*.txt $NAME/*.bat $NAME/lib/README

rm -rf `find $NAME -name ".svn"`

zip -r $NAME.zip $NAME

rm -rf $NAME


