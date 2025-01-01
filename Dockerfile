FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files to /app
COPY . /app

# Set PYTHONPATH to /app
ENV PYTHONPATH=/app

# Uncomment the following line if you want to run a specific script by default
# CMD ["python", "event_handling.py"]