@echo off

:: Set the values of DB_USER, DB_PORT, DB_HOST, and DB_PASSWORD
set "SECRET_KEY=1234"
set "DB_USER=postgres"
set "DB_PORT=5432"
set "DB_HOST=localhost"
set "DB_PASSWORD=postgres"

:: Display the values for verification
echo DB_USER=%DB_USER%
echo DB_PORT=%DB_PORT%
echo DB_HOST=%DB_HOST%
echo DB_PASSWORD=%DB_PASSWORD%