# Use an official Python runtime as a base image
FROM python:3.10-slim AS rag_demo

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable using the correct format
ENV NAME=World

# Make port 8501 available to the world outside this container
EXPOSE 8503

# Command to run the app
CMD ["streamlit", "run", "Drone_chat.py", "--server.port=8503"]