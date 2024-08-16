# Movers

This is a sample FastAPI server to kick start fastapi server projects.
The following configurations are made

1. `FastAPI HTTP Server`
2. `Celery`
3. `Alembic for managing data migrations`

## Get started:

- Package managemnt uses `poetry` package manager, install it.
- To ensure that the poetry environments path is within the current directory,
   Run `poetry config virtualenvs.in-project true` inside the project directory

- Run `poetry install` to install dependencies
- Run `poertry shell` to activate the environment
- Create your `postgres` db for this project

- Create a file `.env.local` with the environment variables, a sample `.env.example` is provided as a guide
- After installation and creation of required packages and enviroment variables, run the script `./prestart.sh` to
  initialize the db and add sample data to it.
- To start the HTTP server, run `./run.sh` this will sart a usgi server using `uvicorn`
- To start the celery worker, run `./worker-start.sh`
- To run tests, run `./tests-start.sh` a `coverage` file will be created with the test coverage report

## Post startup

After getting started, and the server is running, checkout http://localhost:8000/docs/ to see what
is already setup out of the box.