# Use the official PostgreSQL image from Docker Hub
FROM postgres:latest
# Optional: Set a custom PostgreSQL configuration file
# COPY postgresql.conf /etc/postgresql/postgresql.conf

# Copy initialization files in alphabetical order to ensure they are executed in the correct sequence
COPY init.sql /docker-entrypoint-initdb.d/01-init.sql

# Expose the default PostgreSQL port
EXPOSE 5432

# Health check with credentials and timeout
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD pg_isready -U ${POSTGRES_USER} -d ${POSTGRES_DB} || exit 1
