#!/bin/bash
clear
echo "Enter '0' to Redeem your UnBlock"
echo ""
echo "Enter '1' to Start the Productivity Script"
echo ""
echo "Enter '2' to Check Status"
echo ""
echo "Enter '3' to Star Timer"
read choice
clear
if [ "$choice" == "1" ]
then
 echo "Please Enter the Number of Productive Hours You Target"
 read target
 echo $target > target1
 total=$(cat random)
 echo "Please Enter the Number of Distracting Websites You want to Block"
 read number
 clear
 for (( k=1; k<=$number; k++))
 do
 echo "Enter the full url of number " "$k" " website"
 read website
 if [[ "$website" == "www.twitter.com" ]]
 then
  cat twitter.txt >> block
 fi
 echo "127.0.0.1 "$website >> block
 echo "127.0.1.1 "$website >> block
 clear
 done
 echo "The Timer App will start after You provide the sudo pass"
 if [[ "$target" == "$total" ]]
 then
 sudo cp unblock /etc/hosts
 else
 sudo cp block /etc/hosts
 fi
 t1.sh
elif [ "$choice" == "0" ]
then
	if [[ "$target" == "$total" ]]
	then
	sudo cp unblock /etc/hosts
	else
	echo "You Have Not Completed Your Daily Goal Yet"
	fi
elif [ "$choice" == "2" ]
then
 a=$(cat target1)
 b=$(cat random)
 c=$(( $a - $b ))
 echo "No. of Hours Left to Redeem Unblock: "$c
elif ["$choice" == "3" ]
then
 t1.sh
else
 echo "enter correct option"
fi
