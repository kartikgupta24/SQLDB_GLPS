# Use the official SQL Server image
FROM mcr.microsoft.com/mssql/server:2019-latest

# Set environment variables for SQL Server configuration
ENV ACCEPT_EULA=Y
ENV MSSQL_AUTHENTICATION_MODE=SqlAuthentication
ENV SA_PASSWORD=Techtalks@24

# Create a non-root user and set permissions
RUN useradd -m sqluser && \
    chown -R sqluser:sqluser /var/opt/mssql

# Switch to the non-root user
USER sqluser

# Expose the default SQL Server port
EXPOSE 1433

# Run SQL Server
CMD ["/opt/mssql/bin/sqlservr"]
