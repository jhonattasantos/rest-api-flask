FROM python:3.12.1-alpine3.19

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY  app.py .

# Make port 80 available to the world outside this container
EXPOSE 5000

CMD ["python", "app.py"]