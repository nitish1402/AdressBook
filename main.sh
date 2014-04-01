#!/bin/sh

#this is the main script which will be used to call all other script

Address_Book="address_book.txt"

export Address_Book

term=0

echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
echo "|-------------------------------------------------------------|"
echo "|----------Welcome To coder AdressBook managing Software------|"
echo "|-------------------------------------------------------------|"
echo "|-------------||||||||||||||||||||||||||||--------------------|"
echo "|-------------          CODER             --------------------|"
echo "|-------------||||||||||||||||||||||||||||--------------------|"
echo "|-------------------------------------------------------------|"
echo "|-------------------------------------------------------------|"
echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"

while [ $term -ne 1 ]
do
   echo "What you want do to--------"
   echo "Operations ----------------"
   echo "--->Add something(add)-----"
   echo "--->find Something(find)---"
   echo "--->print Something(print)-"
   echo "--->logoff(quit)-----------"
   echo -n "Enter choice:"
   read choice
   
   case $choice in
    add)
        echo "Calling entry book"
        echo "Wait loading -----"
        sh Entry_book.sh
       ;;
     
    find)
        echo "Calling Coder Search"
        echo "Wait loading---"
        sh Search_AddressBook.sh
       ;;

    print)
        echo "Calling Printer Manual"
        echo "Wait Loading---"
        sh Prine_AddressBook.sh
      ;;

    quit)
        echo "Bye Bye-----(Happy Coding!!)"
        term=1
      ;;
     *)
       echo "You must be bot"
       sleep 5
    esac
done      
exit 0   
