## Docker project to run MongoDB on a Raspberry Pi for use by other systems on the same network

### Requirements:
This project was tested on:  
Raspberry Pi 4 Model B 4gb rev 1.2  
Ubuntu Server 20.04.2 LTS (GNU/Linux 5.4.0-1028-raspi aarch64)  
Docker version 20.10.3, build 48d30b5

## Quickstart

### Setup
Clone this repository:
```
$ git clone git@github.com:gabriel-aranha/pi-docker-mongo.git
```
Enter the folder:
```
$ cd pi-docker-mongo
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
<pi-ip-on-local-network>:27017
```