FROM ubuntu:24.04

RUN apt update -y && apt upgrade -y

RUN apt install maven openjdk-17-jre pip -y

RUN mkdir /build/
RUN mkdir -p /app/zatikon
RUN mkdir -p /root/.local/share
RUN ln -s /app/resources/ /root/.local/share/zatikon

COPY submodules/zatikon /build/zatikon
RUN cd /build/zatikon && mvn clean package
RUN cp /build/zatikon/target/zatikon* /app/zatikon/zatikon.jar

COPY submodules/TheFootman /app/TheFootman
RUN pip install -r /app/TheFootman/requirements.txt --break-system-packages

COPY /docker/run.sh /app/

ENTRYPOINT ["/bin/bash", "/app/run.sh"]