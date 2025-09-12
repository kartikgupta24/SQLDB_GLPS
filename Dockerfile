FROM mcr.microsoft.com/mssql/server:2019-latest

# Set environment variables for SQL Server configuration
ENV ACCEPT_EULA=Y
ENV MSSQL_AUTHENTICATION_MODE=SqlAuthentication
ENV SA_PASSWORD=Techtalks@24

# Use a different user with elevated permissions
USER root

# Expose the default SQL Server port
EXPOSE 1433

# Run SQL Server as a non-root user after setting permissions
RUN /bin/bash -c "/opt/mssql/bin/sqlservr & wait"
