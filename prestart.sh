#! /usr/bin/env bash

export $(grep -v '^#' .env.local | xargs)
export PYTHONPATH=.

# Let the DB start
python ./app/backend_pre_start.py

# Run migrations
alembic upgrade head

# Create initial data in DB
python ./app/initial_data.py
