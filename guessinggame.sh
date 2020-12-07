#!/usr/bin/env bash

count=$(ls | wc -w)
loop=true

function ask {
    echo $1
    read response
}

ask "Type in a guess at the number of files contained in current directory and then press Enter:"

while $loop
do
    if [[ $response -lt $count ]]
    then
	ask "Your guess is too low, please type another guess at number of files and then press Enter:"
    elif [[ $response -gt $count ]]
    then
	ask "Your guess is too high, please type another guess at number of files and then press Enter:"
    else
	echo "Congratulations on guessing correctly!"
	loop=false
    fi
done
