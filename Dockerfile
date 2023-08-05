# Use the official Python image as the base image
FROM python:3.8

# Set environment variables for Python buffering and avoid writing pyc files
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1

# Create and set the working directory inside the container
WORKDIR /myapp
# Copy the requirements.txt file into the container
COPY requirements.txt /app/
# Copy the project files to the container's working directory
COPY . /application/
# Install the dependencies

RUN pip freeze > requirements.txt

# Expose the Django development server port
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "192.168.100.15:8000"]
