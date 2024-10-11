FROM python:3.12-alpine

# Update package index and install awscli
RUN apk update && apk add --no-cache aws-cli

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run your application
CMD ["python3", "app.py"]
