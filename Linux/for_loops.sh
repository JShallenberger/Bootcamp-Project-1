#!/bin/bash

# Variables
states=(
    'Minnesota'
    'Colorado'
    'Florida'
    'Nevada'
    'California'
)
ls_out=$(ls)
suids=$(find / -type f -perm /4000 2> /dev/null)
nums=$(echo {0..9})


# Create for loop
for state in ${states[@]};
do
    if [ $state == 'Hawaii' ]
    then 
        echo "Hawaii is the best"
    else 
        echo "I'm not fond of $state"
    fi
done

# Create a loop that prints only 3, 5 and 7
for num in ${nums[@]};
do
  if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
  then
    echo $num
  fi 
done

# Create a `for` loop that prints out each item in your variable that holds the output of the `ls` c$
#for x in ${ls_out[@]};
do
  echo $x
done

# Bonus
# Create a for loop to print out suids on one line for each entry
#for suid in ${suids[@]};
do
  echo $suid
done
