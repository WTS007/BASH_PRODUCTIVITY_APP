#!/bin/bash
#timer
Set Variables
cols=$( tput cols )
rows=$( tput lines )
middle_row=$(( ($rows /2) - 2 ))
middle_col=$(( ($cols /2) - 3 ))
tput cup $( tput lines ) 0
buffer=$(cat date)
if [ "$buffer" == "0" ]
then
c=1
fi
if [ "$c" == "1" ] #This block will read time and pass it to a file date and this block will be true once every day
then
dt=$(date +%d)
echo $dt > date
c=0
fi
clear
database.sh 0
echo "Please enter the hours for your timer: "
read hour
echo "Please enter the break_time in minutes You need after every one hour"
read brk
if [ "$brk" == "0" ] #because I don't want to deal with negaive numbers in loop
then
brk=1
fi
if [ "$hour" == "0" ] #because I don't want to deal with negative numbers in loop
then
hour=1
fi
clear
database.sh $hour #passing the no of hours to show the total amount of productive hours spent by the user
tput bold
tput civis
for (( i = $hour-1; i >= 0; i--))
do
        for min in {59..0}
        do
                for sec in {60..0}
                do
                tput cup $middle_row $middle_col
                echo -ne "$i:$min:$sec\033[0K\r"
                sleep 1
                if [ "$i" -eq "0" ] && [ "$min" -eq "1" ]
                then
                tput setab 1
                tput clear
                fi
                done
        done
clear
if [ "$brk" > "0" ]
then
notify-send -i face-wink "Break Time"
fi
for (( j = $brk-1; j >= 0; j--))
do
echo "BREAK TIME"
	for s in {60..0}
	do
	echo -ne "$j:$s\033[0K\r"
	sleep 1
	done
clear
done
clear
done
tput reset
