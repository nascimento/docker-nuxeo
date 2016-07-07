#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER nuxeo WITH PASSWORD 'nuxeo';
    CREATE DATABASE nuxeo;
    GRANT ALL PRIVILEGES ON DATABASE nuxeo TO nuxeo;
EOSQL
