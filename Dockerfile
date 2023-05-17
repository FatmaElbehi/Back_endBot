# Use an official Python runtime as a parent image
FROM python:3.10.7

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Copy the rest of the application code into the container at /app
COPY . /app

# Set the command to run the Flask app
CMD ["sh", "-c", "python generate.py & Chatting.py"]

