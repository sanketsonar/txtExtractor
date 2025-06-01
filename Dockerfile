FROM python:3.9.7-slim-buster

WORKDIR .
COPY . .

RUN -m pip install --upgrade pip \
    && pip install --no-cache gcc libffi-dev musl-dev ffmpeg aria2 \
    && pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./main.py" ]
