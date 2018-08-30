@echo off
setlocal EnableDelayedExpansion

set CLASSPATH=.
FOR %%F IN (lib\*.jar) DO (set CLASSPATH=!CLASSPATH!;%%F)
FOR %%F IN (lib\*.zip) DO (set CLASSPATH=!CLASSPATH!;%%F)

java -cp %CLASSPATH% org.pentaho.md5.generator.ChecksumGenerator %*
