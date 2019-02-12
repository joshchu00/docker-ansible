FROM alpine:3.9

RUN apk update
RUN apk --no-cache add ansible tzdata

RUN addgroup -g 1000 jenkins
RUN adduser -u 1000 -G jenkins -D jenkins
RUN adduser jenkins root

USER jenkins

RUN touch /home/jenkins/inventory

RUN mkdir /home/jenkins/.ssh
RUN chmod 700 /home/jenkins/.ssh
RUN touch /home/jenkins/.ssh/id_rsa
