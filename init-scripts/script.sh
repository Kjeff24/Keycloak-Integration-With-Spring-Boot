#!/bin/bash
DB_NAME=keycloak
DB_EXISTS=$(psql -U postgres -tAc "SELECT 1 FROM pg_database WHERE datname='$DB_NAME'")
if [ "$DB_EXISTS" = '1' ]
then
    echo "Database $DB_NAME already exists"
else
    createdb -U postgres $DB_NAME
    echo "Database $DB_NAME created"
fi
