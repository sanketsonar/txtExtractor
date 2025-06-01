FROM python:3.9.7-slim-buster

WORKDIR .
COPY . .


    

# Install Python dependencies
RUN pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir --upgrade -r requirements.txt 


CMD [ "python", "./main.py" ]
