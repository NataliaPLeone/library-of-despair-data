# Use the official PostgreSQL image from Docker Hub
FROM postgres:18.4

COPY init.sql /docker-entrypoint-initdb.d/01-init.sql

EXPOSE 5432

# Health check with credentials and timeout
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD pg_isready -U ${POSTGRES_USER} -d ${POSTGRES_DB} || exit 1
