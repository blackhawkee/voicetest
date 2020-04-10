FROM python:3.6

# Create app directory
WORKDIR /app

# Install app dependencies
COPY requirements.txt ./

RUN apt-get update && apt-get install -y python3-pip tk-dev python-tk python3-tk python3-matplotlib

RUN pip install -r requirements.txt
##RUN apt-get install python3-tk

# Bundle app source
COPY . /app

EXPOSE 8080
CMD [ "python", "voice.py" ]
