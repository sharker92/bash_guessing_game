#!/bin/bash

RE="^[0-9]+$"
COUNT=$(($(ls -lA | wc -l)-1))
echo -e  "Insert the amout of files on this directory: \n$PWD" 

while :
do
    read TRY
	if [[ $TRY =~ $RE ]]
	then
    	if [[ $COUNT -eq $TRY ]]
    	then
			break
    	elif [[ $TRY -gt $COUNT ]]
    	then
			echo "Sorry, the number of files is smaller, please try again"
    	elif [[ $TRY -lt $COUNT ]]
    	then
			echo "Sorry, the number of files is bigger, please try again"
    	fi
	else
		echo "Wrong Input!"
		echo "Please insert a natural number"
	fi
echo "Try again, insert a number:"
done
echo "Congratulations you enter the correct amount of files!!!"

