# onlyoffice-dockerfile
onlyoffice-dockerfile
Configure ip addresses to allow integration
Configure the RULE environment variable when the container starts

docker run -itd --name onlyoffice \
-e RULE=127.0.0.1
onlyoffice/documentserver
