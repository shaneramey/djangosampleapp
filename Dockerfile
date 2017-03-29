FROM python:3.5.2
LABEL maintainer "you@somewhere.local"

EXPOSE 8000

# run apt-get upgrade to get latest updates on-build
RUN apt-get update -y && \
    apt-get upgrade -y  && \
    apt-get install -y libssl-dev && \
    rm -rf /var/lib/apt/lists/* # make a smaller docker image

COPY . /application/

WORKDIR /application/
RUN pip install -r /application/requirements.txt

CMD /usr/local/bin/uwsgi --ini /application/uwsgi.ini
