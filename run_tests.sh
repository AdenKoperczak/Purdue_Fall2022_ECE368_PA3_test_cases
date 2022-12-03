#!/bin/bash

if [ ! -d Results ]; then
    
    mkdir Results
fi

files=$(ls --color=never Grids/*.b | sed "s/  \+/ /g" | sed "s/.b//g" | sed "s/Grids\///g")

for file in $files
do
    echo $file
    ../pa3 Grids/$file.b Results/$file.t Results/$file.f Results/$file.p
    diff Results/$file.t Correct/$file.t 
    diff Results/$file.f Correct/$file.f 
    diff Results/$file.p Correct/$file.p 
    echo ""
done
