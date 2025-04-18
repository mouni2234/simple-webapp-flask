# Use an official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy only necessary files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose the Flask port
EXPOSE 8080

# Run the Flask app
CMD ["python", "app.py"]

