#!/bin/bash

# start the postgres server
/etc/init.d/postgresql start

# update password
su -c "psql -c \"ALTER USER postgres PASSWORD 'postgres'\"" postgres

# source env vars
# TODO

# kick of the e2e script
./e2e.sh
