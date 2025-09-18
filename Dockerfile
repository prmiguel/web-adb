# FROM python:2.7
FROM okteto/python:2
RUN apt-get update -y
RUN apt install -y android-tools-adb
WORKDIR /app
COPY . .
ENTRYPOINT [ "/usr/local/bin/python", "server.py" ]
CMD [ "--port=8081", "--adb-path=/usr/bin/adb" ]
