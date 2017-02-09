#!/bin/bash

echo "P3 Run Script"
export CLASSPATH=$CLASSPATH:"./dist/MDELite6.jar"

for filepath in ./P3Examples/*.class.violet; do
    filename=$(basename $filepath)
    path=$(dirname $filepath)
    name=$(echo "$filename" | sed "s/\..*//")
    if [ -z "$1" ] || [ "$name" == "$1" ] 
        then
        echo P3-Script$ java MDL.VioletClassParser $filepath $path/$name.vpl.pl
        java MDL.VioletClassParser $filepath $path/$name.vpl.pl
        echo P3-Script$ java MDL.Vm2t $path/$name.vpl.pl toYuml.vm myoutput.txt
        java MDL.Vm2t $path/$name.vpl.pl toYuml.vm myoutput.txt
        echo P3-Script$ cat myoutput.txt
        cat myoutput.txt
    fi
done
