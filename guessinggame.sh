#!/usr/bin/env bash
# File: guessinggame.sh

m_file_count=$(ls | wc -w)
m_loop=true

function m_interaction {
    echo $1
    read response
}

m_interaction "Type in a guess at the number of files contained in current directory and then press Enter:"

while $m_loop
do
    if [[ $response -lt $m_file_count ]]
    then
	m_interaction "Your guess is too low, please type another guess at number of files and then press Enter:"
    elif [[ $response -gt $m_file_count ]]
    then
	m_interaction "Your guess is too high, please type another guess at number of files and then press Enter:"
    else
	echo "Congratulations on guessing correctly!"
	m_loop=false
    fi
done
