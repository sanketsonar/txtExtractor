FROM python:3.9.7-slim-buster

WORKDIR .
COPY . .

RUN 
    pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir --upgrade
    && apk add --no-cache gcc libffi-dev musl-dev ffmpeg aria2 \
    && pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./main.py" ]
