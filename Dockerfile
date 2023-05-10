FROM onlyoffice/documentserver
#RUN apt-get update && apt-get install -y vim
COPY ./default.json /etc/onlyoffice/documentserver/default.json
COPY ./ds-example.conf /etc/onlyoffice/documentserver-example/nginx/includes/ds-example.conf
COPY ./ds-docservice.conf /etc/onlyoffice/documentserver/nginx/includes/ds-docservice.conf
COPY ./run-document-server.sh   /app/ds/run-document-server.sh
#COPY ./replace_rule.sh /app/ds/replace_rule.sh
ENTRYPOINT ["sh","-c","/app/ds/run-document-server.sh"]
