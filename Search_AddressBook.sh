#!/bin/sh
#this script file finds the details of person with specified feild

AddressBook="address_book.txt"

#prompt to enter the criteria


echo "------------------------Welcome to Coder Search--------------------"
echo "-------------------------------------------------------------------"
echo "-----------------------||||||||||||||||||||||||--------------------"
echo "-----------------------         CODER          --------------------"
echo "-----------------------||||||||||||||||||||||||--------------------"
echo "-------------------------------------------------------------------"
echo "Search Criteria are as follows enter what you want"
echo "----> By name(name)"
echo "----> By state(state)"
echo "----> By country(country)"
echo "----> By title(title) "
echo "----> By city(city) "
echo "----> By Region(rgn)"
echo -n "Enter the criteria by the bracket name:="
read criteria
echo "---------------------"
echo -n "The entry which you want to search for (($criteria)) :-"
read name

#p$3 $4 $5 $6 $7 $7 $8 $9 $10 $11 $12 $13rinting details
#grep -i $name $AddressBook

#using case for handling different criterias
#printf "lastname=%s-----|\nTitle=%s-----|\nStreetAddress=%s-----|
         #city=%s-----|\nState=%s-----|\nZip_code%s-----|\nDate_Of_Birth=%s-----|Mobile_Number=%s-----|
         #Fax_Number=%s-----|Region=%s-----|Country=%s-----|", $3,$4,$5,$6,$7,$7,$8,$9,$10,$11,$12,$13}'
case $criteria in

 name)   
         echo "Searchin for $name in $AddressBook"
         echo "Printing details for $name-------"
         echo "---------------------------------"
         awk -v var=$name -F ':' '$2 ~ var { printf "lastname      =  %s\nTitle         =  %s\nStreetAddress =  %s\ncity          =  %s\nState         =  %s\nZip_code      =  %s\nDate_Of_Birth =  %s\nMobile_Number =  %s\nFax_Number    =  %s\nRegion        =  %s\nCountry       =  %s\n", $3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13}' $AddressBook
         echo "---------------------------------"
         echo "---------------------------------"


 ;;

 state)
         echo "Searchin for $name in $AddressBook"
         echo "Printing details for $name-------"
         echo "---------------------------------"
         awk -v var=$name -F ':' '$7 ~ var { printf "firstname     =%s\nlastname      =  %s\nTitle         =  %s\nStreetAddress =  %s\ncity          =  %s\nZip_code      =  %s\nDate_Of_Birth =  %s\nMobile_Number =  %s\nFax_Number    =  %s\nRegion        =  %s\nCountry       =  %s\n",$2,$3,$4,$5,$6,$8,$9,$10,$11,$12,$13}' $AddressBook
         echo "---------------------------------"
         echo "---------------------------------"


 ;;

 country)
         echo "Searchin for $name in $AddressBook"
         echo "Printing details for $name-------"
         echo "---------------------------------"
         awk -v var=$name -F ':' '$13 ~ var { printf "firstname     =%s\nlastname      =  %s\nTitle         =  %s\nStreetAddress =  %s\ncity          =  %s\nstate         =%s\nZip_code      =  %s\nDate_Of_Birth =  %s\nMobile_Number =  %s\nFax_Number    =  %s\nRegion        =  %s\n",$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12}' $AddressBook
         echo "---------------------------------"
         echo "---------------------------------"


 ;;

 title)
         echo "Searchin for $name in $AddressBook"
         echo "Printing details for $name-------"
         echo "---------------------------------"
         awk -v var=$name -F ':' '$4 ~ var { printf "firstname     =%s\nlastname      =  %s\nStreetAddress =  %s\ncity          =  %s\nstate        = %s\nZip_code      =  %s\nDate_Of_Birth =  %s\nMobile_Number =  %s\nFax_Number    =  %s\nRegion        =  %s\nCountry       =  %s\n",$2,$3,$5,$6,$7,$8,$9,$10,$11,$12,$13}' $AddressBook
         echo "---------------------------------"
         echo "---------------------------------"


 ;;

 city)
         echo "Searchin for $name in $AddressBook"
         echo "Printing details for $name-------"
         echo "---------------------------------"
         awk -v var=$name -F ':' '$6 ~ var { printf "firstname     =%s\nlastname      =  %s\nTitle         =  %s\nStreetAddress =  %s\nstate         =  %s\nZip_code      =  %s\nDate_Of_Birth =  %s\nMobile_Number =  %s\nFax_Number    =  %s\nRegion        =  %s\nCountry       =  %s\n",$2,$3,$4,$5,$7,$8,$9,$10,$11,$12,$13}' $AddressBook
         echo "---------------------------------"
         echo "---------------------------------"


 ;;

rgn)
         echo "Searchin for $name in $AddressBook"
         echo "Printing details for $name-------"
         echo "---------------------------------"
         awk -v var=$name -F ':' '$12 ~ var { printf "firstname     =%s\nlastname      =  %s\nTitle         =  %s\nStreetAddress =  %s\ncity          =  %s\nstate         = %s\nZip_code      =  %s\nDate_Of_Birth =  %s\nMobile_Number =  %s\nFax_Number    =  %s\nCountry       =  %s\n",$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$13}' $AddressBook |less
         echo "---------------------------------"
         echo "---------------------------------"


 ;;

 *)
        echo "Unknown feild - coder Search Can't recognise it"
esac


