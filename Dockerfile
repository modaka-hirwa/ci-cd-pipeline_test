#Use an official Python run time as parent image
FROM python:3.9-slim

#Set the working directory in the container
WORKDIR /app

#Copy the current directory contents into the contianer at /app
COPY . /app

#install any needed dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Make port 5000 availabel to the world outside this container
EXPOSE 5000

#Define environment variable
ENV FLASK_APP=app.main

#Run app.py when the container launches
CMD ["flask", "run", "--host=0.0.0.0"]

