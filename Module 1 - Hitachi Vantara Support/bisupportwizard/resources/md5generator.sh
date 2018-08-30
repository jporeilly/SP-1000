#!/bin/sh

BASEDIR=`dirname $0`
cd $BASEDIR

CLASSPATH=$BASEDIR

for f in `find $BASEDIR/lib -type f -name "*.jar"` `find $BASEDIR/lib -type f -name "*.zip"`
do
  CLASSPATH=$CLASSPATH:$f
done

echo $CLASSPATH

java -cp $CLASSPATH org.pentaho.md5.generator.ChecksumGenerator "${1+$@}"
