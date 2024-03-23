#!/bin/bash

# Install dependencies
pip install -r requirements.txt

python manage.py makemigrations

# Apply migrations
python manage.py migrate


echo "from django.contrib.auth.models import User; User.objects.create_superuser('manoj', 'manoj@abc.com', 'superuser')" | python manage.py shell

# Collect static files
python manage.py collectstatic --noinput
