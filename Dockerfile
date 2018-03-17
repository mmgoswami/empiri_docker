FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /src
RUN mkdir /config
ADD /config/requirements.txt /config/
ADD /src/. /src/
WORKDIR /src
RUN pip install -r /config/requirements.txt
