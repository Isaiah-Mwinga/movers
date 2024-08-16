#! /usr/bin/env bash
set -e

export $(grep -v '^#' .env.local | xargs)
export PYTHONPATH=.

python ./app/tests_pre_start.py

bash ./scripts/test.sh "$@"
