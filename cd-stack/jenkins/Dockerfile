################################################################################
#
# .) Build
# docker build --no-cache -t casadocker/jenkins-cd:1.651.2-1 .
#
################################################################################


FROM casadocker/jenkins:1.651.2-1


RUN mkdir -p /opt/jenkins_config/.docker
ADD files/curlrc /opt/jenkins_config/.curlrc
ADD files/ca.pem /opt/jenkins_config/.docker/ca.pem
ADD files/cert.pem /opt/jenkins_config/.docker/cert.pem
ADD files/key.pem /opt/jenkins_config/.docker/key.pem
