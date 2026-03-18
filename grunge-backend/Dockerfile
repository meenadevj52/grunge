# Dockerfile for the Grunge Rock Django application
#
# Build an image suitable for development or simple deployment.  The
# container runs using the same Python version the project supports and
# installs packages from requirements.txt.  All application source is
# copied into /app so commands such as migrations or ``runserver`` can be
# executed within the container.

FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

# copy entrypoint again to ensure permission layer updated
COPY docker-entrypoint.sh /app/docker-entrypoint.sh

RUN chmod +x /app/docker-entrypoint.sh

ENTRYPOINT ["/app/docker-entrypoint.sh"]

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]