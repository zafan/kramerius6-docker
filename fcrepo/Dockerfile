FROM centos
LABEL maintainer="Frantisek.Stepanovsky@mzk.cz"

WORKDIR /fcrepo4-data/

ENV FEDORA_VERSION 4.7.5

ADD https://github.com/fcrepo4/fcrepo4/releases/download/fcrepo-${FEDORA_VERSION}/fcrepo-webapp-${FEDORA_VERSION}-jetty-console.jar /fcrepo4-data/

ENV JAVA_VERSION 8u31
ENV BUILD_VERSION b13
ENV JAVA_OPTS="${JAVA_OPTS} -Dfcrepo.modeshape.configuration=classpath:/config/file-simple/repository.json -Dfcrepo.home=/fcrepo4-data"

RUN yum update -y && \
 yum -y install java-1.8.0-openjdk && \
 rm -rf /var/cache/yum



ENV HOME /fcrepo4-data
ENV JAVA_HOME /etc/alternatives/jre

EXPOSE 8080


CMD java -jar fcrepo-webapp-${FEDORA_VERSION}-jetty-console.jar --port 8080 --headless
