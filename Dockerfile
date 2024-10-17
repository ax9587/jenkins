FROM jenkins/jenkins
# if we want to install via apt
USER root
RUN apt-get update && apt-get install wget && cd /usr/share && wget https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz  && tar -xvf apache-maven-3.9.9-bin.tar.gz
# drop back to the regular jenkins user - good practice
USER jenkins