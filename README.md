## Docker project to run MongoDB for use by other systems on the same network

## Quickstart

### Setup
Clone this repository:
```
$ git clone git@github.com:gabriel-aranha/docker-mongo.git
```
Enter the folder:
```
$ cd docker-mongo
```
Edit the Dockerfile to set username(SECRET_USERNAME) and password(SECRET_PASSWORD):
```
$ nano Dockerfile
```
Edit the mongod.conf file if more configuration is needed for your case:
```
$ nano mongod.conf
```

### Running
Command to build Docker image:
```
$ docker build -t mongo .
```
Command to run Docker container:
```
$ docker run --name mongo -d -p 0.0.0.0:27017:27017 --restart unless-stopped --network=host mongo
```
MongoDB can then be accessed from other systems using the following ip and port:
```
<ip-on-local-network>:27017
```
