FROM  maven:3.8.1-jdk-11

RUN apt-get update && apt-get install -y docker
copy ca-certs /ca-certs
RUN  keytool -import -alias example -keystore  "/usr/local/openjdk-11/lib/security/cacerts" -file /ca-certs/galianlocal.cer -storepass "changeit"

