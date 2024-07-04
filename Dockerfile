FROM python:2.7
RUN apt update && apt update;apt install android-tools-adb -y
WORKDIR /app
COPY . .
ENTRYPOINT [ "/usr/local/bin/python", "server.py" ]
CMD [ "--port=8081", "--adb-path=/usr/bin/adb" ]
