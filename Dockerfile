FROM postgres:latest

# Set environment variables
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=postgres

# Copy the SQL script to initialize the database
COPY init.sql /docker-entrypoint-initdb.d/
