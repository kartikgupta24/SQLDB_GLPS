# Use the official SQL Server image
FROM mcr.microsoft.com/mssql/server:2019-latest

# Set environment variables for SQL Server configuration
ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=Techtalks@24
ENV MSSQL_PID=Developer

# Expose SQL Server port
EXPOSE 1433

# Run SQL Server (default user mssql is used, not root)
CMD ["/opt/mssql/bin/sqlservr"]
