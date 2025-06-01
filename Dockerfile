FROM python:3.9.7-slim-buster

WORKDIR .
COPY . .

RUN apk add --no-cache \
    gcc \
    libffi-dev \
    musl-dev \
    ffmpeg \
    aria2 \
    

# Install Python dependencies
RUN pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir --upgrade -r requirements.txt 


CMD [ "python", "./main.py" ]
