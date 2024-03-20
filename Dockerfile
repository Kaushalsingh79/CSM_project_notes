# Use an official Python runtime as a parent image
FROM python:latest

# Set the working directory in the container
WORKDIR /Notes

# Copy the current directory contents into the container at /app
COPY . /Notes
CMD ["cd","Notes"]

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8080 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["gunicorn", "main:app"]
