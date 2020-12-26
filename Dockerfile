FROM "python:3.7-slim"

LABEL maintainer="jlandercy@gmail.com"

RUN apt-get update && \
    apt-get install -y \
    python3-dev libpq-dev build-essential

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install --upgrade setuptools virtualenv

COPY ./configuration ./configuration
RUN python3 -m pip install -r ./configuration/requirements.txt

#RUN useradd --user-group --create-home --no-log-init --shell /bin/bash guest
#USER guest

CMD ["python3"]
