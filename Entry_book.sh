#!/bin/sh
#the following scripting file will add the user entries into a file

#Varaible for address book

AddBook="address_book.txt" 


#now asking user to enter their information
echo -n "Enter your saluation:-"
read saluation

echo -n "Enter your first name:-"
read fname

echo -n "Enter your last name:-"
read lname

echo -n "Enter your title:-"
read title

echo -n "Enter street Address:-"
read addr

echo -n "Enter City:-"
read city

echo -n "Enter State:-"
read state

echo -n "Enter Zip-code:-"
read zcode

echo -n "Enter your date of birth:-"
read dob

echo -n "Enter your mobile number:-"
read mobn

echo -n "Enter your Fax no.:-"
read fnum

echo -n "Enter Region:-"
read rgn

echo -n "Enter Country:-"
read cntry



#now asking user to decide whether to enter these enteries or not

echo -n "If you want to add these enteries type 'yes'(without quotes)"
read var
echo -n "Otherwise type 'no'(Without quotes)"


#getting the reply

read reply

#checking for reply

if [ "$reply"=="yes" ]
then 
   #writing to address book
   echo "$saluation : $fname : $lname : $title : $addr: $city : $state :$zcode :$dob : $mobn :$fnum : $rgn :$cntry" >> $AddBook
else
   echo -n   echo "$saluation $fname $lname $title $addr $city $state $zcode $dob $mobn $fnum $rgn $cntry "is not written to $AddBook 

fi

#end of script
 
