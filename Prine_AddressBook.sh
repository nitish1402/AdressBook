#!/bin/sh
#the following script file prints the address book

#the address book is this
AddressBook="address_book.txt"

counter=0;
echo "----------------Welcome To Nitish Contact World-------------------------------------------------------"
echo "----------------Displaying Address Book ---------------------------------------------------------------"
echo "------|---|-------|-------|-------|---------|-------|-------|--------|----------|--------|------|-------|"
echo "Index |Sal| FName | LName | Title | Street  | City  | State |   DOB  | MobileNO.| FaxNo. |region|country|"
cat $AddressBook | while IFS=: read t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
do
   counter=$(($counter+1))
   echo "$counter|$t1|$t2|$t3|$t4|$t5|$t6|$t7|$t8|$t8|$t9|$t10|$t11|$t12|$t13"
done
