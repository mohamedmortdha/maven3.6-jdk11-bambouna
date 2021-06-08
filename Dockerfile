FROM  maven:3.8.1-jdk-11

RUN apt-get update && apt-get install -y docker
copy ca-certs /ca-certs
RUN keytool -import -file /ca-certs/galianlocal.cer -keystore /usr/local/openjdk-11/jre/lib/security/cacerts -storepass "changeit"

