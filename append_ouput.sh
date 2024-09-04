#!/bin/bash

echo -e "Enter the name of the file : \c"
read file_name

if [ -f $ file_name ]
then
    if [ -w $ file_name]
then
    echo "Type some text data. To quit press ctrl+d."
else
    echo "The file do not have a wirlte permission."
fi
else
    echo"$ file_name not exists"
fi
