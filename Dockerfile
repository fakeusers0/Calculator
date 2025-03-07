# Use a lightweight base image
FROM python:3.9-slim AS builder

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY calculator/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all the code needed for testing and building
COPY calculator/ ./calculator/
COPY test/ ./test/
COPY setup.py .

# Use a smaller runtime image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the dependencies from the builder stage
COPY --from=builder /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
COPY --from=builder /usr/local/bin /usr/local/bin

# Copy all application code and test files
COPY --from=builder /app /app

# Remove ENTRYPOINT to allow Jenkins to execute commands
# and keep the container running with a non-terminating command
ENTRYPOINT []
CMD ["tail", "-f", "/dev/null"]
