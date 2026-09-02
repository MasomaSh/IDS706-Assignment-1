# IDS706-Assignment-1
[![Python tests](https://github.com/MasomaSh/IDS706-Assignment-1/actions/workflows/test.yml/badge.svg)](https://github.com/MasomaSh/IDS706-Assignment-1/actions/workflows/test.yml)

## Project Description
This project is the first project for Data Engineering (IDS706) class. A simple function that asks for user name and prints a short welcome message. If the user doesn't type a name or just spaces, it defaults to "Guest_student" instead of breaking.
## Setup 
- Clone the repo
- Create and activate a virtual environment with 'python -m venv .venv' and 'source .venv/bin/activate'
- - Install dependencies with 'make install'
## Makefile
- 'make install' to install dependencies
- 'make run' to run the app
- 'make test' to run the test suite
- 'make docker-build' to build the Docker image
- 'make docker-run' to run the app inside Docker
- 'make docker-test' to run the test suite inside Docker
- 'make clean' to remove generated files
## Testing
- Run tests with 'python -m pytest'
## Docker
- 'make docker-build' to build the image
- 'make docker-run' to run the app in a container
- 'make docker-test' to run tests inside a container
- 'make clean' to remove generated files
## .dockerignore
Keeps local environment files and caches out of the Docker build context.
## GitHub Actions / CI-CD
Every push to 'main' triggers the workflow, which:
- Installs dependencies
- Runs the test suite
- Builds the Docker image
- Runs tests inside the container
## Bonus  
I changed the welcome message wording, made it handle empty input gracefully, and added tests for empty and whitespace-only input. Every push triggers GitHub Actions to run the full pipeline including tests, Docker build, and Docker tests. 



