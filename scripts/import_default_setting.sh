#!/bin/bash

EXPECTED_ARGS=2
E_BADARGS=65
if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: $0 dbname dbuser"
  exit $E_BADARGS
fi


echo "Create table"

sudo mysql -u $2 -p $1 <../CREATE_TABLE.sql

echo "Check table"

sudo mysql -u $2 -p -e "show tables from $1;"

# insert the first problem with domain setting

echo "Create first problem"

I1="INSERT INTO levels (level, ttl, lorder) VALUES (1, 'Test', 1);"
I2="INSERT INTO level_domain (did, level) VALUES (0, 1);"

sudo mysql -u $2 -p $1 -e "${I1}${I2}"
