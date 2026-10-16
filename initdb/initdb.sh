#!/bin/bash
# Run SQL to create foo.bar table in PostGIS
set -e

SQL_FILE=/sql/initdb.sql

echo "Running ${SQL_FILE}..."

psql -v ON_ERROR_STOP=1 --user ${POSTGRES_USER} --dbname ${POSTGRES_DB} -f "${SQL_FILE}"
