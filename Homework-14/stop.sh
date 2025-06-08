#!/bin/bash

end="stop"

until [[ $end == $input ]]
do

	read -p "Enter a word: " input
	if [ $end != $input ]
	then
		echo "Enter 'stop' to end. "
	fi
done


