
from maven:3.8.1-jdk-11
# install docker
RUN apt-get update && apt-get install -y docker

COPY galianlocal.cer  $JAVA_HOME/lib/security
RUN \
    cd $JAVA_HOME/lib/security \
    && keytool -keystore cacerts -storepass changeit -noprompt -trustcacerts -importcert -alias galianlocal -file galianlocal.cer

