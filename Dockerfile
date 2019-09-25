FROM python:3.5-buster

# Install python
RUN pip3 install pipenv 

COPY . /app

WORKDIR /app

RUN pipenv install

# Exposer le port 
EXPOSE 80
EXPOSE 5000


# Add VOLUMEs to allow backup of config, logs and databases

# Set the default command to run when starting the container
CMD pipenv run python3 application_web_event.py
