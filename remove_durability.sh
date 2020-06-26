#!/bin/bash

# setting non-durable options
# https://www.postgresql.org/docs/current/static/non-durability.html
echo "Configuring postgres non-durable options."
# no need to flush data to disk.
echo "fsync = off" >> /var/lib/postgresql/data/postgresql.conf
# no need to force WAL writes to disk on every commit.
echo "synchronous_commit = off" >> /var/lib/postgresql/data/postgresql.conf
# no need to guard against partial page writes.
echo "full_page_writes = off" >> /var/lib/postgresql/data/postgresql.conf
