#!/bin/bash


while true; do
read -p "Do You Want To Install Docker? (yes/no) " yn
case $yn in
        [yY] ) echo Start Installing Docker;
            break;;
        [Nn] ) echo no;
            echo Skipping Docker Installation;
            break;;
        * ) echo "Invalid Response , Try Again With (y/n) ";;
esac
done
echo doing stuff...
