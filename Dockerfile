FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y ansible && apt-get install -y python-setuptools && easy_install pip && pip install pywinrm
# drop back to the regular jenkins user - good practice
USER jenkins