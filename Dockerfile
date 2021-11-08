FROM python:3.6
LABEL maintainer="Ram"
RUN  pip install Flask 
COPY . /app
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["flask_app/hello.py"]