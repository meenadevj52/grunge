#!/bin/sh

echo "Running entrypoint..."

python manage.py migrate

exec "$@"