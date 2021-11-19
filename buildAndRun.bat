@echo off
call mvn clean package
call docker build -t com.emsi.coteazure/tpbanque .
call docker rm -f tpbanque
call docker run -d -p 9080:9080 -p 9443:9443 --name tpbanque com.emsi.coteazure/tpbanque