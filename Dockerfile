# Use the official, lightweight PostgreSQL 16 image
FROM postgres:16-alpine

# Set environment variables for better logging output
ENV LANG=en_US.utf8

# Copy all initialization SQL scripts from your repository root 
# into the native Postgres initialization folder
COPY *.sql /docker-entrypoint-initdb.d/

# Optional: If your repository stores SQL files in a specific folder (like /scripts or /db), 
# uncomment the line below and adjust the path accordingly:
# COPY ./scripts/*.sql /docker-entrypoint-initdb.d/

# Expose the standard PostgreSQL port
EXPOSE 5432
