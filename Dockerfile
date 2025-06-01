FROM python:3.10.1-slim-buster

WORKDIR /MakimaRobot/

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y git wget curl bash neofetch ffmpeg software-properties-common

RUN python3 -m pip install --upgrade pip wheel

COPY requirements.txt .

RUN pip3 install --no-cache-dir -U -r requirements.txt

COPY . .

CMD ["python3", "-m", "MakimaRobot"]