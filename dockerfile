# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the Python files and text file into the container
COPY semantic.py example.py Notes.txt requirements.txt ./

# Install the required Python packages from requirements.txt
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Command to run when the container starts
CMD [ "python", "semantic.py" ]