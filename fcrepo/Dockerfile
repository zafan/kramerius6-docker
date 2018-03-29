FROM tomcat:8.5
LABEL maintainer="daniel.secik@mzk.cz"
 
ENV FEDORA_VERSION 4.7.5

ENV JAVA_OPTS="${JAVA_OPTS} -Dfcrepo.modeshape.configuration=classpath:/config/file-simple/repository.json -Dfcrepo.home=/fcrepo4-data"

ADD https://github.com/fcrepo4/fcrepo4/releases/download/fcrepo-${FEDORA_VERSION}/fcrepo-webapp-${FEDORA_VERSION}.war /usr/local/tomcat/webapps/fedora.war


