FROM python:3.8-slim-buster
WORKDIR /application 
COPY .  /application
RUN apt update -y && apt install awscli -y
RUN pip install -r requriments.txt
CMD [ "python3", "application.py" ]
