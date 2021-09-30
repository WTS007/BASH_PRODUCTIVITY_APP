#!/bin/bash
first=$1
datee=$(cat date)
dateee=$(date +%d)
dt=$(($dateee - $datee))
if [[ "$datee" < "$dateee" ]]
then
    if [[ "$dt" > 1 ]]
    then
        for (( i = $datee; i <= $dateee; i++))
        do
        echo "$i""th     You Skipped" >> weeklyLog.txt
        done
    else
    echo "$datee""th     target: ""$(cat target1)""     completed: ""$(cat random)"
    fi
echo 0 > random
echo 0 > date
fi
perv=$(cat random)
total=$(($perv +$first))
echo $total > random
