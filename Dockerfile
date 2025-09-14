# Use the official SQL Server image
FROM mcr.microsoft.com/mssql/server:2022-latest

# Set environment variables for SQL Server configuration
ENV ACCEPT_EULA=Y
ENV MSSQL_AUTHENTICATION_MODE=SqlAuthentication
ENV SA_PASSWORD=Techtalks@24

# Expose the default SQL Server port
EXPOSE 1433

# Use a command that works around the permission issues
CMD ["/bin/bash", "-c", "/opt/mssql/bin/sqlservr"]
