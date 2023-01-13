#!/bin/bash
echo "1CP-Docs - Creates a virtual environment,installs required package, clean build before starting start doc server to test locally"
pipenv --python 3.9.6                 # sets python version                        # Opens shell in new virtual environment
source $(pipenv --venv)/bin/activate
pip3 install -r requirements.txt      # Install packages from requirements.txt
mkdocs build                          # Build documentation...
mkdocs serve                          # Start local development server and browsable pages in at http://127.0.0.1:8000/ to verify changes
