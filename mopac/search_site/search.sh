#!/bin/bash

echo "" > results.txt

for ((i=0+4; i<288+4; i++))
do
    echo $i
    cp ZTC.mop ZTC_defectN_$i.mop
    sed -i "$i s/C/N/" ZTC_defectN_$i.mop
    /usr/local/bin/mopac ZTC_defectN_$i.mop
    grep HEAT ZTC_defectN_$i.mop >> results.txt
    rm -f ZTC_defectN_$i.arc
done
