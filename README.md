# IDS706-Assignment-1
[![Python tests](https://github.com/MasomaSh/IDS706-Assignment-1/actions/workflows/test.yml/badge.svg)](https://github.com/MasomaSh/IDS706-Assignment-1/actions/workflows/test.yml)

This project is my first assignment for the Data Engineering class. A simple function that asks for user name and prints a short welcome message. If the user doesn't type a name or just spaces, it defaults to "Guest_student" instead of breaking.
To run it, clone the repo, set up a virtual environment with 'python -m venv .venv' and' source .venv/bin/activate', then run  'make install' and 'make run'. Tests run with 'python -m pytest', and Docker support is included by 'make docker-build','make docker-run', and 'make docker-test`. 
For the bonus, I changed the welcome message wording, made it handle empty input gracefully, and added tests for empty and whitespace-only input. Every push triggers GitHub Actions to run the full pipeline including tests, Docker build, and Docker tests. 
