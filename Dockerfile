FROM python:3-buster

RUN apt-get update && \
    apt-get install build-essential -y && \
    mkdir /etc/papercut

RUN git clone https://git.mistergeek.fr/acid/papercut.git /usr/src/app/papercut --branch feature/mysql-python3

WORKDIR /usr/src/app/papercut

RUN pip install .

COPY config/papercut.yaml /etc/papercut

EXPOSE 119

CMD ["/usr/local/bin/papercut"]