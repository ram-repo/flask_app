# FROM python:3.6
# LABEL maintainer="Ram"
# RUN  pip install Flask 
# COPY . /app
# WORKDIR /app
# EXPOSE 8080
# ENTRYPOINT ["python"]
# CMD ["flask_app/hello.py"]

FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install python3-pip -y
RUN pip install flask
COPY hello.py /home/app.py
ENTRYPOINT FLASK_APP=/home/app.py flask run --host=0.0.0.0

