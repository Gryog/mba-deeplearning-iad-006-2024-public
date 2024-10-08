# Use an official Python image as the base
FROM python:3.10-slim

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app.py app.py
COPY modelo.pkl modelo.pkl

# Expose the port
EXPOSE 8000

# Run the command to start the development server
CMD ["python", "app.py"]