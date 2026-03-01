#! /bin/bash

PSQL="psql --username=postgres --dbname=periodic_table --no-align --tuples-only -c"

#checking if there is an input argument
if [[ -z $1 ]] 
then
echo "Please provide an element as an argument."
else
#check if it is numeric. If true, retrieve atomic_number, then symbol and name from table elements.
if [[ "$1" =~ ^[0-9]+$ ]]; then
ATOMIC_NUMBER=$($PSQL"SELECT atomic_number from elements where atomic_number=$1")
SYMBOL=$($PSQL "SELECT symbol from elements where atomic_number=$1")
NAME=$($PSQL "SELECT name from elements where atomic_number=$1")
elif [[ "$1" =~ ^[a-zA-Z]+$ ]]; then
SYMBOL=$($PSQL "SELECT symbol from elements where symbol='$1'")
if [[ -z $SYMBOL ]]; then
	
	 	NAME=$($PSQL "SELECT name from elements where name='$1'")
		ATOMIC_NUMBER=$($PSQL"SELECT atomic_number from elements where name='$1'")
		SYMBOL=$($PSQL "SELECT symbol from elements where name='$1'")
		fi
if [[ -z  $NAME ]]; then
      SYMBOL=$($PSQL "SELECT symbol from elements where symbol='$1'")
      ATOMIC_NUMBER=$($PSQL "SELECT atomic_number from elements where symbol='$1'")
      NAME=$($PSQL "SELECT name from elements where symbol='$1'")
fi
fi

# if the argument doesn'n exists in the database,display the required message
if [[ -z $SYMBOL ]] && [[ -z $NAME ]] && [[ -z $ATOMIC_NUMBER ]]; then
echo "I could not find that element in the database."
else
#retrieve all the other informations required for the final message.
MASS=$($PSQL "SELECT atomic_mass from properties where atomic_number=$ATOMIC_NUMBER")
MELTING_POINT=$($PSQL "SELECT melting_point_celsius from properties where atomic_number = $ATOMIC_NUMBER")
BOILING_POINT=$($PSQL "SELECT boiling_point_celsius from properties where atomic_number = $ATOMIC_NUMBER")
#I use the following, because the type column will be deleted from properties table later.
TYPE=$($PSQL "select types.type from properties join types on properties.type_id=types.type_id where atomic_number=$ATOMIC_NUMBER")
#display the output message
echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a nonmetal, with a mass of $MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
fi
fi