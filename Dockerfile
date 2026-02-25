# Use official Python lightweight image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the bot's code into the container
COPY . .

# Expose a port for Back4App health check
EXPOSE 8080

# Command to run the bot
CMD ["python", "h.py"]
