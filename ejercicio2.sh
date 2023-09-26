#!/bin/bash

text="Que me gusta la bash!!!!"

echo "Introoduce un texto:"
read textUser

if [[ $textUser -gt 0 ]]
then
  text=textUser
fi

mkdir dummy
mkdir empty
cd dummy
echo $text > file1.txt
touch file2.txt
cp file1.txt file2.txt 
mv file2.txt ../empty
