# Use the official PostgreSQL image from Docker Hub
FROM postgres:latest

# Set environment variables for PostgreSQL
# These are required for the image to initialize the database
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_DB=mydatabase

# Optional: Set a custom PostgreSQL configuration file
# COPY postgresql.conf /etc/postgresql/postgresql.conf

# Optional: Copy SQL scripts or initialization files
# COPY init.sql /docker-entrypoint-initdb.d/

# Expose the default PostgreSQL port
EXPOSE 5432

# Health check (optional but recommended)
HEALTHCHECK --interval=30s --timeout=3s \
  CMD pg_isready -U myuser -d mydatabase
