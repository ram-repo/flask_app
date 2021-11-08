FROM python:3.6
LABEL maintainer="Ram"
RUN mkdir /home/flask_app \      
           cd /home/flask_app \        
           git clone https://github.com/ram/flask_app.git \
           pip install Flask -y
WORKDIR /home/flask_app
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["flask_app/hello.py"]