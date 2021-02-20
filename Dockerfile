# Base MongoDB image
FROM mongo:4.4.3

# Set Username and Password
ENV MONGO_INITDB_ROOT_USERNAME=SECRET_USERNAME
ENV MONGO_INITDB_ROOT_PASSWORD=SECRET_PASSWORD

# Copy MongoDB config file into container
COPY mongod.conf /etc

# Override default MongoDB config file
CMD ["-f", "/etc/mongod.conf"]
