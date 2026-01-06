FROM ubuntu:latest

WORKDIR /helloworld

COPY . /helloworld

RUN apt-get update && apt-get install -y python3 python3-pip

ENV NAME World

CMD ["pyhton3", "helloworld.py"]
