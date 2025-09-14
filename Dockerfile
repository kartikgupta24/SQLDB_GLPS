# Use the official SQL Server image
FROM mcr.microsoft.com/mssql/server:2022-latest

# Set environment variables for SQL Server configuration
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Techtalks@24

# Ensure we are running as root
USER root

# Expose the default SQL Server port
EXPOSE 1433

# Start SQL Server
CMD ["/opt/mssql/bin/sqlservr"]
