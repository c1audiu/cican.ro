#!/bin/bash
# if virtualenvwrapper.sh is in your PATH (i.e. installed with pip)
source `which virtualenvwrapper.sh`
#source /path/to/virtualenvwrapper.sh # if it's not in your PATH
workon $1
python $2
deactivate
#venv_run.sh my_virtualenv /path/to/script.py
