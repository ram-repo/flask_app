# python-flask

## Build application

## Git Repo 

```
git clone https://github.com/ram/flask_app.git

``` 
## Docker Image build  
```
docker image build -t /flask_app .

```

## Run container docker test 

Run the container
Create a container from the image.

```
$ docker run --name flask-app -d -p 8080:8080 ram/flask_app

```
## Now visit http://localhost:8080

## The hostname of the container is 6095273a4e9b and its IP is 172.17.0.2. 
* Verify the running container
* Verify by checking the container ip and hostname (ID):

```
$ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' flask-app
172.17.0.2
$ docker inspect -f '{{ .Config.Hostname }}' flask-app
6095273a4e9b
```
