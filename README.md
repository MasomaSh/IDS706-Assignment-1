# IDS706-Assignment-1
[![Python tests](https://github.com/MasomaSh/IDS706-Assignment-1/actions/workflows/test.yml/badge.svg)](https://github.com/MasomaSh/IDS706-Assignment-1/actions/workflows/test.yml)

## Project Description
This project is a simple project for Data Engineering (IDS706) class. A simple function that asks for user name and prints a short welcome message. If the user doesn't type a name or just spaces, it defaults to "Guest_student" instead of breaking.

## Setup Instructions
- Clone the repo
- Set up a virtual environment with 'python -m venv .venv' and' source .venv/bin/activate'
- Run  'make install' and 'make run'. 
- Tests run with 'python -m pytest' 
- Docker support is included by 'make docker-build','make docker-run', and 'make docker-test`.

## Bonus  
I changed the welcome message wording, made it handle empty input gracefully, and added tests for empty and whitespace-only input. Every push triggers GitHub Actions to run the full pipeline including tests, Docker build, and Docker tests. 

## Usage 
