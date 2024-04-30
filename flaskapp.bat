@echo off
(
echo FLASK_APP=amazon.py
echo FLASK_DEBUG=True
echo FLASK_RUN_HOST=0.0.0.0
echo FLASK_RUN_PORT=8080
echo SECRET_KEY='%SECRET%'
echo DB_NAME=amazon
echo DB_USER=!PGUSER!
echo DB_PORT=!PGPORT!
echo DB_HOST=!PGHOST!
echo DB_PASSWORD=!PGPASSWORD!
) > .flaskenv

