#! /bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo -e "\n Welcome to My Salon, how can I help you? \n"

MAIN_MENU() {
  
  if [[ $1 ]]
  then
  echo -e "\n$1"
  fi
  
SERVICES=$($PSQL "SELECT service_id, name FROM services")
#service_id is a serial type, so it starts from 1 (min_id).
   min_id=1
   max_id=$($PSQL "SELECT max(service_id) FROM services")
#show list of services
  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE
  do
    echo "$SERVICE_ID) $SERVICE"
  done
 
#get option
 read SERVICE_ID_SELECTED
 
#check if the input is a number and has a valid value (between min_id and max_id)
 if [[ ( "$SERVICE_ID_SELECTED" =~ ^[0-9]+$) && ($SERVICE_ID_SELECTED -ge "$min_id" && $SERVICE_ID_SELECTED -le "$max_id") ]]; then

  SERVICE_NAME=$($PSQL"SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  echo -e "\nWhat's your phone number?"
  read  CUSTOMER_PHONE
 CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE' ")
# if customer doesn't exist
 if [[ -z $CUSTOMER_NAME ]]
  then
    # get new customer name
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    # insert new customer
    INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name,phone) VALUES('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
 
 fi
CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

echo $CUSTOMER_ID
echo $CUSTOMER_NAME
echo -e "\nWhat time would you like your$SERVICE_NAME, $CUSTOMER_NAME?"
read SERVICE_TIME
#record appointment
INSERT_APPOINTMENT=$($PSQL "INSERT INTO APPOINTMENTS(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME')")
echo -e "\nI have put you down for a$SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
echo -e "\n"
else
MAIN_MENU "I could not find that service. What would you like today?"
fi
} 
MAIN_MENU
