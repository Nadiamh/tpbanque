#!/bin/sh
mvn clean package && docker build -t com.emsi.coteazure/tpbanque .
docker rm -f tpbanque || true && docker run -d -p 9080:9080 -p 9443:9443 --name tpbanque com.emsi.coteazure/tpbanque