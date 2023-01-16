#!/bin/bash

max=0
for file in $USER*; do
num=${file#$USER}
[[ $num != *[^0-9]* && num -gt max ]] && max=$num
done

for ((i=1; i<=25; i++)); do
touch "$USER$((max+i))"
done