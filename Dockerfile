# Use Python 3.6 or later as a base image
FROM python:latest

WORKDIR /app

# Copy contents into image
COPY . .

# Install pip dependencies from requirements
RUN pip install -r "requirements.txt"

# Set YOUR_NAME environment variable

# Expose the correct port
#EXPOSE 8080

# Create an entrypoint
ENTRYPOINT ["python", "app.py"

