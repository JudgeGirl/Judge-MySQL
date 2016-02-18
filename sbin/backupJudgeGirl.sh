#!/bin/bash

USER="root"
PASSWORD=""
OUTPUT="/home/judgesister/DBs"
DATABASE="c2015"

# rm "$OUTPUT/*gz" > /dev/null 2>&1

databases=`mysql --user=$USER --password=$PASSWORD -e "SHOW DATABASES;" | tr -d "| " | grep -v Database`

echo "Dumping database: $DATABASE"
mysqldump --force --opt --user=$USER --password=$PASSWORD --databases $DATABASE > $OUTPUT/`date +%Y%m%d`.$DATABASE.sql
gzip $OUTPUT/`date +%Y%m%d`.$DATABASE.sql
