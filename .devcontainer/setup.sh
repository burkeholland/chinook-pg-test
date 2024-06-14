#!/bin/bash

# Log out the current directory
echo "Current directory: $(pwd)"

# Database credentials
username="postgres"
password="postgres"
host="localhost"
port="5432"

# Create the chinook database
createdb -U "$username" -h "$host" -p "$port" chinook

# Path to the SQL script
sql_script=".devcontainer/Chinook_PostgreSql.sql"

# Run the SQL script using psql
psql -U "$username" -h "$host" -p "$port" -f "$sql_script"