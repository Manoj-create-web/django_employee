#!/bin/bash

# Install dependencies
pip install -r requirements.txt

python manage.py makemigrations

# Apply migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput
