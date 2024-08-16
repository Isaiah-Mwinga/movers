#! /usr/bin/env bash
set -e

export $(grep -v '^#' .env.local | xargs)
export PYTHONPATH=.

chmod +x wait-for-it.sh
./wait-for-it.sh -h localhost -p 6379 -t 30

python ./app/celeryworker_pre_start.py

celery --app app.worker worker -l info -Q main-queue -c 2 --without-mingle --without-heartbeat
