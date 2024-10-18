FROM jenkins/jenkins
# if we want to install via apt
USER root
RUN apt-get update && apt-get install wget && apt-get install -y maven
# drop back to the regular jenkins user - good practice
USER jenkins