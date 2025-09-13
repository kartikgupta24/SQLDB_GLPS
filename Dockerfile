# Use the official SQL Server image
FROM mcr.microsoft.com/mssql/server:2019-latest

# Set environment variables for SQL Server configuration
ENV ACCEPT_EULA=Y
ENV MSSQL_AUTHENTICATION_MODE=SqlAuthentication
ENV SA_PASSWORD=Techtalks@24

# Switch to the root user for the following commands
USER root

# Expose the default SQL Server port
EXPOSE 1433

# Run SQL Server using the root user
CMD ["/bin/bash", "-c", "/opt/mssql/bin/sqlservr & wait"]
